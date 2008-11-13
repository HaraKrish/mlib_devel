function [str,opb_addr_end,plb_addr_end] = gen_mhs_ip(blk_obj,opb_addr_start,plb_addr_start,plb_name,opb_name)
opb_addr_end = opb_addr_start;
plb_addr_end = plb_addr_start;

inst_name = clear_name(get(blk_obj,'simulink_name'));
xsg_obj   = get(blk_obj,'xsg_obj');

hw_qdr   = get(blk_obj,'hw_qdr');
clk_src  = get(blk_obj,'clk_src'); 
clk_rate = get(blk_obj,'clk_rate'); 

str = '';

%%%%% QDR Controller Entry %%%%%

% pcore Instantiation
str = [str, 'BEGIN qdr_controller\n'];

str = [str, ' PARAMETER INSTANCE = ', hw_qdr,'_controller',    '\n'];
str = [str, ' PARAMETER CLK_FREQ = ', sprintf('%d', clk_rate), '\n'];
str = [str, ' PARAMETER HW_VER   = 1.00.a',                    '\n'];

str = [str, ' PORT clk0    = ', clk_src,         '\n'];
str = [str, ' PORT clk180  = ', clk_src, '180',  '\n'];
str = [str, ' PORT clk270  = ', clk_src, '270',  '\n'];
str = [str, ' PORT div_clk = sys_clk',           '\n'];
str = [str, ' PORT reset   = sys_reset',         '\n'];


str = [str, ' PORT qdr_k_n       = ', hw_qdr, '_k_n',       '\n'];
str = [str, ' PORT qdr_k         = ', hw_qdr, '_k',         '\n'];
str = [str, ' PORT qdr_d         = ', hw_qdr, '_d',         '\n'];
str = [str, ' PORT qdr_bw_n      = ', hw_qdr, '_bw_n',      '\n'];
str = [str, ' PORT qdr_sa        = ', hw_qdr, '_sa',        '\n'];
str = [str, ' PORT qdr_w_n       = ', hw_qdr, '_w_n',       '\n'];
str = [str, ' PORT qdr_r_n       = ', hw_qdr, '_r_n',       '\n'];
str = [str, ' PORT qdr_q         = ', hw_qdr, '_q',         '\n'];
str = [str, ' PORT qdr_cq_n      = ', hw_qdr, '_cq_n',      '\n'];
str = [str, ' PORT qdr_cq        = ', hw_qdr, '_cq',        '\n'];
str = [str, ' PORT qdr_qvld      = ', hw_qdr, '_qvld',      '\n'];
str = [str, ' PORT qdr_dll_off_n = ', hw_qdr, '_dll_off_n', '\n'];

str = [str, ' PORT phy_rdy  = ', inst_name, '_phy_ready ', '\n'];
str = [str, ' PORT cal_fail = ', inst_name, '_cal_fail',   '\n'];

str = [str, ' PORT usr_addr    = ', inst_name, '_address',  '\n'];
str = [str, ' PORT usr_wr_strb = ', inst_name, '_wr_en',    '\n'];
str = [str, ' PORT usr_wr_data = ', inst_name, '_data_in',  '\n'];
str = [str, ' PORT usr_wr_be   = ', inst_name, '_be',       '\n'];
str = [str, ' PORT usr_rd_strb = ', inst_name, '_rd_en',    '\n'];
str = [str, ' PORT usr_rd_data = ', inst_name, '_data_out', '\n'];

str = [str, 'END\n'];

% QDR Controller Externals

str = [str, ' PORT ', hw_qdr, '_k_n       = ', hw_qdr,'_k_n       , DIR = O',               '\n'];
str = [str, ' PORT ', hw_qdr, '_k         = ', hw_qdr,'_k         , DIR = O',               '\n'];
str = [str, ' PORT ', hw_qdr, '_d         = ', hw_qdr,'_d         , DIR = O, VEC = [17:0]', '\n'];
str = [str, ' PORT ', hw_qdr, '_bw_n      = ', hw_qdr,'_bw_n      , DIR = O, VEC =  [1:0]', '\n'];
str = [str, ' PORT ', hw_qdr, '_sa        = ', hw_qdr,'_sa        , DIR = O, VEC = [21:0]', '\n'];
str = [str, ' PORT ', hw_qdr, '_w_n       = ', hw_qdr,'_w_n       , DIR = O',               '\n'];
str = [str, ' PORT ', hw_qdr, '_r_n       = ', hw_qdr,'_r_n       , DIR = O',               '\n'];
str = [str, ' PORT ', hw_qdr, '_q         = ', hw_qdr,'_q         , DIR = I, VEC = [17:0]', '\n'];
str = [str, ' PORT ', hw_qdr, '_cq_n      = ', hw_qdr,'_cq_n      , DIR = I',               '\n'];
str = [str, ' PORT ', hw_qdr, '_cq        = ', hw_qdr,'_cq        , DIR = I',               '\n'];
str = [str, ' PORT ', hw_qdr, '_qvld      = ', hw_qdr,'_qvld      , DIR = I',               '\n'];
str = [str, ' PORT ', hw_qdr, '_dll_off_n = ', hw_qdr,'_dll_off_n , DIR = O',               '\n'];

