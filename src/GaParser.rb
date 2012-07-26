#!/usr/bin/env ruby
#
# Ga.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.11
# Input grammar file: Ga.g
# Generated at: 2012-07-26 21:46:34
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

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "NUMBER", "VARIABLE", "MINUS", "LET", "VAR", "NUM", 
                    "WS", "'('", "'let'", "')'", "'-'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Ga
    include ANTLR3::ASTBuilder

    RULE_METHODS = [ :prog, :expr, :let, :minus, :var, :number ].freeze


    include TokenData

    begin
      generated_using( "Ga.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.11" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    ProgReturnValue = define_return_scope 

    # 
    # parser rule prog
    # 
    # (in Ga.g)
    # 16:1: prog : ( expr )+ ;
    # 
    def prog
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      return_value = ProgReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      expr1 = nil


      begin
        root_0 = @adaptor.create_flat_list


        # at line 16:8: ( expr )+
        # at file 16:8: ( expr )+
        match_count_1 = 0
        while true
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0.between?( VAR, NUM ) || look_1_0 == T__11 )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 16:8: expr
            @state.following.push( TOKENS_FOLLOWING_expr_IN_prog_69 )
            expr1 = expr
            @state.following.pop
            @adaptor.add_child( root_0, expr1.tree )

          else
            match_count_1 > 0 and break
            eee = EarlyExit(1)


            raise eee
          end
          match_count_1 += 1
        end

        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )


        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return return_value
    end

    ExprReturnValue = define_return_scope 

    # 
    # parser rule expr
    # 
    # (in Ga.g)
    # 19:1: expr : ( number | var | minus | let );
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      return_value = ExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      number2 = nil
      var3 = nil
      minus4 = nil
      let5 = nil


      begin
        # at line 19:6: ( number | var | minus | let )
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when NUM then alt_2 = 1
        when VAR then alt_2 = 2
        when T__11 then look_2_3 = @input.peek( 2 )

        if ( look_2_3 == T__14 )
          alt_2 = 3
        elsif ( look_2_3 == T__12 )
          alt_2 = 4
        else
          raise NoViableAlternative( "", 2, 3 )
        end
        else
          raise NoViableAlternative( "", 2, 0 )
        end
        case alt_2
        when 1
          root_0 = @adaptor.create_flat_list


          # at line 19:8: number
          @state.following.push( TOKENS_FOLLOWING_number_IN_expr_81 )
          number2 = number
          @state.following.pop
          @adaptor.add_child( root_0, number2.tree )

        when 2
          root_0 = @adaptor.create_flat_list


          # at line 20:3: var
          @state.following.push( TOKENS_FOLLOWING_var_IN_expr_87 )
          var3 = var
          @state.following.pop
          @adaptor.add_child( root_0, var3.tree )

        when 3
          root_0 = @adaptor.create_flat_list


          # at line 21:3: minus
          @state.following.push( TOKENS_FOLLOWING_minus_IN_expr_93 )
          minus4 = minus
          @state.following.pop
          @adaptor.add_child( root_0, minus4.tree )

        when 4
          root_0 = @adaptor.create_flat_list


          # at line 22:3: let
          @state.following.push( TOKENS_FOLLOWING_let_IN_expr_99 )
          let5 = let
          @state.following.pop
          @adaptor.add_child( root_0, let5.tree )

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )


        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return return_value
    end

    LetReturnValue = define_return_scope 

    # 
    # parser rule let
    # 
    # (in Ga.g)
    # 25:1: let : '(' 'let' '(' VAR expr ')' '(' expr ')' ')' -> ^( LET VAR ( expr )+ ) ;
    # 
    def let
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      return_value = LetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal6 = nil
      string_literal7 = nil
      char_literal8 = nil
      __VAR9__ = nil
      char_literal11 = nil
      char_literal12 = nil
      char_literal14 = nil
      char_literal15 = nil
      expr10 = nil
      expr13 = nil

      tree_for_char_literal6 = nil
      tree_for_string_literal7 = nil
      tree_for_char_literal8 = nil
      tree_for_VAR9 = nil
      tree_for_char_literal11 = nil
      tree_for_char_literal12 = nil
      tree_for_char_literal14 = nil
      tree_for_char_literal15 = nil
      stream_VAR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token VAR" )
      stream_T__12 = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token T__12" )
      stream_T__11 = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token T__11" )
      stream_T__13 = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token T__13" )
      stream_expr = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expr" )
      begin
        # at line 25:7: '(' 'let' '(' VAR expr ')' '(' expr ')' ')'
        char_literal6 = match( T__11, TOKENS_FOLLOWING_T__11_IN_let_110 )
        stream_T__11.add( char_literal6 )
        string_literal7 = match( T__12, TOKENS_FOLLOWING_T__12_IN_let_112 )
        stream_T__12.add( string_literal7 )
        char_literal8 = match( T__11, TOKENS_FOLLOWING_T__11_IN_let_114 )
        stream_T__11.add( char_literal8 )
        __VAR9__ = match( VAR, TOKENS_FOLLOWING_VAR_IN_let_116 )
        stream_VAR.add( __VAR9__ )
        @state.following.push( TOKENS_FOLLOWING_expr_IN_let_118 )
        expr10 = expr
        @state.following.pop
        stream_expr.add( expr10.tree )
        char_literal11 = match( T__13, TOKENS_FOLLOWING_T__13_IN_let_120 )
        stream_T__13.add( char_literal11 )
        char_literal12 = match( T__11, TOKENS_FOLLOWING_T__11_IN_let_122 )
        stream_T__11.add( char_literal12 )
        @state.following.push( TOKENS_FOLLOWING_expr_IN_let_124 )
        expr13 = expr
        @state.following.pop
        stream_expr.add( expr13.tree )
        char_literal14 = match( T__13, TOKENS_FOLLOWING_T__13_IN_let_126 )
        stream_T__13.add( char_literal14 )
        char_literal15 = match( T__13, TOKENS_FOLLOWING_T__13_IN_let_128 )
        stream_T__13.add( char_literal15 )
        # AST Rewrite
        # elements: expr, VAR
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

        root_0 = @adaptor.create_flat_list
        # 25:51: -> ^( LET VAR ( expr )+ )
        # at line 25:54: ^( LET VAR ( expr )+ )
        root_1 = @adaptor.create_flat_list
        root_1 = @adaptor.become_root( @adaptor.create_from_type( LET, "LET" ), root_1 )

        @adaptor.add_child( root_1, stream_VAR.next_node )
        # at line 25:64: ( expr )+
        stream_expr.has_next? or raise ANTLR3::RewriteEarlyExit

        while stream_expr.has_next?
          @adaptor.add_child( root_1, stream_expr.next_tree )

        end
        stream_expr.reset

        @adaptor.add_child( root_0, root_1 )



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )


        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return return_value
    end

    MinusReturnValue = define_return_scope 

    # 
    # parser rule minus
    # 
    # (in Ga.g)
    # 28:1: minus : '(' '-' expr expr ')' -> ^( MINUS ( expr )+ ) ;
    # 
    def minus
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )
      return_value = MinusReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal16 = nil
      char_literal17 = nil
      char_literal20 = nil
      expr18 = nil
      expr19 = nil

      tree_for_char_literal16 = nil
      tree_for_char_literal17 = nil
      tree_for_char_literal20 = nil
      stream_T__11 = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token T__11" )
      stream_T__14 = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token T__14" )
      stream_T__13 = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token T__13" )
      stream_expr = ANTLR3::AST::RewriteRuleSubtreeStream.new( @adaptor, "rule expr" )
      begin
        # at line 28:9: '(' '-' expr expr ')'
        char_literal16 = match( T__11, TOKENS_FOLLOWING_T__11_IN_minus_151 )
        stream_T__11.add( char_literal16 )
        char_literal17 = match( T__14, TOKENS_FOLLOWING_T__14_IN_minus_153 )
        stream_T__14.add( char_literal17 )
        @state.following.push( TOKENS_FOLLOWING_expr_IN_minus_155 )
        expr18 = expr
        @state.following.pop
        stream_expr.add( expr18.tree )
        @state.following.push( TOKENS_FOLLOWING_expr_IN_minus_157 )
        expr19 = expr
        @state.following.pop
        stream_expr.add( expr19.tree )
        char_literal20 = match( T__13, TOKENS_FOLLOWING_T__13_IN_minus_159 )
        stream_T__13.add( char_literal20 )
        # AST Rewrite
        # elements: expr
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

        root_0 = @adaptor.create_flat_list
        # 28:31: -> ^( MINUS ( expr )+ )
        # at line 28:34: ^( MINUS ( expr )+ )
        root_1 = @adaptor.create_flat_list
        root_1 = @adaptor.become_root( @adaptor.create_from_type( MINUS, "MINUS" ), root_1 )

        # at line 28:42: ( expr )+
        stream_expr.has_next? or raise ANTLR3::RewriteEarlyExit

        while stream_expr.has_next?
          @adaptor.add_child( root_1, stream_expr.next_tree )

        end
        stream_expr.reset

        @adaptor.add_child( root_0, root_1 )



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )


        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )

      end
      
      return return_value
    end

    VarReturnValue = define_return_scope 

    # 
    # parser rule var
    # 
    # (in Ga.g)
    # 31:1: var : VAR -> ^( VARIABLE VAR ) ;
    # 
    def var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )
      return_value = VarReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __VAR21__ = nil

      tree_for_VAR21 = nil
      stream_VAR = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token VAR" )

      begin
        # at line 31:7: VAR
        __VAR21__ = match( VAR, TOKENS_FOLLOWING_VAR_IN_var_179 )
        stream_VAR.add( __VAR21__ )
        # AST Rewrite
        # elements: VAR
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

        root_0 = @adaptor.create_flat_list
        # 31:11: -> ^( VARIABLE VAR )
        # at line 31:14: ^( VARIABLE VAR )
        root_1 = @adaptor.create_flat_list
        root_1 = @adaptor.become_root( @adaptor.create_from_type( VARIABLE, "VARIABLE" ), root_1 )

        @adaptor.add_child( root_1, stream_VAR.next_node )

        @adaptor.add_child( root_0, root_1 )



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )


        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )

      end
      
      return return_value
    end

    NumberReturnValue = define_return_scope 

    # 
    # parser rule number
    # 
    # (in Ga.g)
    # 34:1: number : NUM -> ^( NUMBER NUM ) ;
    # 
    def number
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )
      return_value = NumberReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NUM22__ = nil

      tree_for_NUM22 = nil
      stream_NUM = ANTLR3::AST::RewriteRuleTokenStream.new( @adaptor, "token NUM" )

      begin
        # at line 34:11: NUM
        __NUM22__ = match( NUM, TOKENS_FOLLOWING_NUM_IN_number_199 )
        stream_NUM.add( __NUM22__ )
        # AST Rewrite
        # elements: NUM
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream( "rule return_value", return_value.tree ) : subtree_stream( "token return_value" )

        root_0 = @adaptor.create_flat_list
        # 34:15: -> ^( NUMBER NUM )
        # at line 34:18: ^( NUMBER NUM )
        root_1 = @adaptor.create_flat_list
        root_1 = @adaptor.become_root( @adaptor.create_from_type( NUMBER, "NUMBER" ), root_1 )

        @adaptor.add_child( root_1, stream_NUM.next_node )

        @adaptor.add_child( root_0, root_1 )



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look( -1 )


        return_value.tree = @adaptor.rule_post_processing( root_0 )
        @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )

      end
      
      return return_value
    end



    TOKENS_FOLLOWING_expr_IN_prog_69 = Set[ 1, 8, 9, 11 ]
    TOKENS_FOLLOWING_number_IN_expr_81 = Set[ 1 ]
    TOKENS_FOLLOWING_var_IN_expr_87 = Set[ 1 ]
    TOKENS_FOLLOWING_minus_IN_expr_93 = Set[ 1 ]
    TOKENS_FOLLOWING_let_IN_expr_99 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_let_110 = Set[ 12 ]
    TOKENS_FOLLOWING_T__12_IN_let_112 = Set[ 11 ]
    TOKENS_FOLLOWING_T__11_IN_let_114 = Set[ 8 ]
    TOKENS_FOLLOWING_VAR_IN_let_116 = Set[ 8, 9, 11, 13 ]
    TOKENS_FOLLOWING_expr_IN_let_118 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_let_120 = Set[ 11 ]
    TOKENS_FOLLOWING_T__11_IN_let_122 = Set[ 8, 9, 11, 13 ]
    TOKENS_FOLLOWING_expr_IN_let_124 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_let_126 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_let_128 = Set[ 1 ]
    TOKENS_FOLLOWING_T__11_IN_minus_151 = Set[ 14 ]
    TOKENS_FOLLOWING_T__14_IN_minus_153 = Set[ 8, 9, 11, 13 ]
    TOKENS_FOLLOWING_expr_IN_minus_155 = Set[ 8, 9, 11, 13 ]
    TOKENS_FOLLOWING_expr_IN_minus_157 = Set[ 13 ]
    TOKENS_FOLLOWING_T__13_IN_minus_159 = Set[ 1 ]
    TOKENS_FOLLOWING_VAR_IN_var_179 = Set[ 1 ]
    TOKENS_FOLLOWING_NUM_IN_number_199 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

