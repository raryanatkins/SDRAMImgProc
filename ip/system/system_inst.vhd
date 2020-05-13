	component system is
		port (
			clk_clk                 : in    std_logic                     := 'X';             -- clk
			interface_address       : in    std_logic_vector(24 downto 0) := (others => 'X'); -- address
			interface_byteenable_n  : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- byteenable_n
			interface_chipselect    : in    std_logic                     := 'X';             -- chipselect
			interface_writedata     : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			interface_read_n        : in    std_logic                     := 'X';             -- read_n
			interface_write_n       : in    std_logic                     := 'X';             -- write_n
			interface_readdata      : out   std_logic_vector(15 downto 0);                    -- readdata
			interface_readdatavalid : out   std_logic;                                        -- readdatavalid
			interface_waitrequest   : out   std_logic;                                        -- waitrequest
			reset_reset_n           : in    std_logic                     := 'X';             -- reset_n
			sdram_addr              : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba                : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n             : out   std_logic;                                        -- cas_n
			sdram_cke               : out   std_logic;                                        -- cke
			sdram_cs_n              : out   std_logic;                                        -- cs_n
			sdram_dq                : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_dqm               : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_ras_n             : out   std_logic;                                        -- ras_n
			sdram_we_n              : out   std_logic;                                        -- we_n
			sdram_clk_100_clk       : out   std_logic;                                        -- clk
			vga_clk_clk             : out   std_logic;                                        -- clk
			system_clock_clk        : out   std_logic                                         -- clk
		);
	end component system;

	u0 : component system
		port map (
			clk_clk                 => CONNECTED_TO_clk_clk,                 --           clk.clk
			interface_address       => CONNECTED_TO_interface_address,       --     interface.address
			interface_byteenable_n  => CONNECTED_TO_interface_byteenable_n,  --              .byteenable_n
			interface_chipselect    => CONNECTED_TO_interface_chipselect,    --              .chipselect
			interface_writedata     => CONNECTED_TO_interface_writedata,     --              .writedata
			interface_read_n        => CONNECTED_TO_interface_read_n,        --              .read_n
			interface_write_n       => CONNECTED_TO_interface_write_n,       --              .write_n
			interface_readdata      => CONNECTED_TO_interface_readdata,      --              .readdata
			interface_readdatavalid => CONNECTED_TO_interface_readdatavalid, --              .readdatavalid
			interface_waitrequest   => CONNECTED_TO_interface_waitrequest,   --              .waitrequest
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --         reset.reset_n
			sdram_addr              => CONNECTED_TO_sdram_addr,              --         sdram.addr
			sdram_ba                => CONNECTED_TO_sdram_ba,                --              .ba
			sdram_cas_n             => CONNECTED_TO_sdram_cas_n,             --              .cas_n
			sdram_cke               => CONNECTED_TO_sdram_cke,               --              .cke
			sdram_cs_n              => CONNECTED_TO_sdram_cs_n,              --              .cs_n
			sdram_dq                => CONNECTED_TO_sdram_dq,                --              .dq
			sdram_dqm               => CONNECTED_TO_sdram_dqm,               --              .dqm
			sdram_ras_n             => CONNECTED_TO_sdram_ras_n,             --              .ras_n
			sdram_we_n              => CONNECTED_TO_sdram_we_n,              --              .we_n
			sdram_clk_100_clk       => CONNECTED_TO_sdram_clk_100_clk,       -- sdram_clk_100.clk
			vga_clk_clk             => CONNECTED_TO_vga_clk_clk,             --       vga_clk.clk
			system_clock_clk        => CONNECTED_TO_system_clock_clk         --  system_clock.clk
		);

