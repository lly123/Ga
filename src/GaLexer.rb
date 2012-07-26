#!/usr/bin/env ruby
#
# Ga.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Ga.g
# Generated at: 2012-07-26 21:46:35
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.11):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '~> 1.8.11' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module Ga
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :WS => 10, :VARIABLE => 5, :T__12 => 12, :T__11 => 11, 
                   :T__14 => 14, :T__13 => 13, :NUMBER => 4, :VAR => 8, 
                   :MINUS => 6, :EOF => -1, :LET => 7, :NUM => 9 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Ga
    include TokenData

    
    begin
      generated_using( "Ga.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "T__11", "T__12", "T__13", "T__14", "NUM", "VAR", "WS" ].freeze
    RULE_METHODS = [ :t__11!, :t__12!, :t__13!, :t__14!, :num!, :var!, :ws! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )

    end
    
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__11! (T__11)
    # (in Ga.g)
    def t__11!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = T__11
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 7:9: '('
      match( 0x28 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule t__12! (T__12)
    # (in Ga.g)
    def t__12!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = T__12
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:9: 'let'
      match( "let" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule t__13! (T__13)
    # (in Ga.g)
    def t__13!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = T__13
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:9: ')'
      match( 0x29 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule t__14! (T__14)
    # (in Ga.g)
    def t__14!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = T__14
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: '-'
      match( 0x2d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule num! (NUM)
    # (in Ga.g)
    def num!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = NUM
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: ( '1' .. '9' ) ( '0' .. '9' )*
      # at line 37:9: ( '1' .. '9' )
      # at line 37:10: '1' .. '9'
      match_range( 0x31, 0x39 )

      # at line 37:19: ( '0' .. '9' )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 37:20: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule var! (VAR)
    # (in Ga.g)
    def var!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = VAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:7: ( 'a' .. 'z' )+
      # at file 38:7: ( 'a' .. 'z' )+
      match_count_2 = 0
      while true
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( 0x61, 0x7a ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 38:8: 'a' .. 'z'
          match_range( 0x61, 0x7a )

        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule ws! (WS)
    # (in Ga.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:6: ( ' ' | '\\t' | '\\r' | '\\n' )+
      # at file 39:6: ( ' ' | '\\t' | '\\r' | '\\n' )+
      match_count_3 = 0
      while true
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( 0x9, 0xa ) || look_3_0 == 0xd || look_3_0 == 0x20 )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek(1) == 0xd || @input.peek(1) == 0x20
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end

      # --> action
      skip();
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__11 | T__12 | T__13 | T__14 | NUM | VAR | WS )
      alt_4 = 7
      alt_4 = @dfa4.predict( @input )
      case alt_4
      when 1
        # at line 1:10: T__11
        t__11!

      when 2
        # at line 1:16: T__12
        t__12!

      when 3
        # at line 1:22: T__13
        t__13!

      when 4
        # at line 1:28: T__14
        t__14!

      when 5
        # at line 1:34: NUM
        num!

      when 6
        # at line 1:38: VAR
        var!

      when 7
        # at line 1:42: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA4 < ANTLR3::DFA
      EOT = unpack( 2, -1, 1, 6, 5, -1, 1, 6, 1, 10, 1, -1 )
      EOF = unpack( 11, -1 )
      MIN = unpack( 1, 9, 1, -1, 1, 101, 5, -1, 1, 116, 1, 97, 1, -1 )
      MAX = unpack( 1, 122, 1, -1, 1, 101, 5, -1, 1, 116, 1, 122, 1, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, -1, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       2, -1, 1, 2 )
      SPECIAL = unpack( 11, -1 )
      TRANSITION = [
        unpack( 2, 7, 2, -1, 1, 7, 18, -1, 1, 7, 7, -1, 1, 1, 1, 3, 3, -1, 
                1, 4, 3, -1, 9, 5, 39, -1, 11, 6, 1, 2, 14, 6 ),
        unpack(  ),
        unpack( 1, 8 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 9 ),
        unpack( 26, 6 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 4
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__11 | T__12 | T__13 | T__14 | NUM | VAR | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa4 = DFA4.new( self, 4 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end

