# encoding: UTF-8

class Mosaheh::Encoder
    
  # Arabic UTF-8 Block, from U+0600 to U+06FF seperated using '_*_'
  AR = '؀_*_؁_*_؂_*_؃_*_؄_*_؅_*_؆_*_؇_*_؈_*_؉_*_؊_*_؋_*_،_*_؍_*_؎_*_؏_*_ؐ_*_ؑ_*_ؒ_*_ؓ_*_ؔ_*_ؕ_*_ؖ_*_ؗ_*_ؘ_*_ؙ_*_ؚ_*_؛_*_؜_*_؝_*_؞_*_؟_*_ؠ_*_ء_*_آ_*_أ_*_ؤ_*_إ_*_ئ_*_ا_*_ب_*_ة_*_ت_*_ث_*_ج_*_ح_*_خ_*_د_*_ذ_*_ر_*_ز_*_س_*_ش_*_ص_*_ض_*_ط_*_ظ_*_ع_*_غ_*_ػ_*_ؼ_*_ؽ_*_ؾ_*_ؿ_*_ـ_*_ف_*_ق_*_ك_*_ل_*_م_*_ن_*_ه_*_و_*_ى_*_ي_*_ً_*_ٌ_*_ٍ_*_َ_*_ُ_*_ِ_*_ّ_*_ْ_*_ٓ_*_ٔ_*_ٕ_*_ٖ_*_ٗ_*_٘_*_ٙ_*_ٚ_*_ٛ_*_ٜ_*_ٝ_*_ٞ_*_ٟ_*_٠_*_١_*_٢_*_٣_*_٤_*_٥_*_٦_*_٧_*_٨_*_٩_*_٪_*_٫_*_٬_*_٭_*_ٮ_*_ٯ_*_ٰ_*_ٱ_*_ٲ_*_ٳ_*_ٴ_*_ٵ_*_ٶ_*_ٷ_*_ٸ_*_ٹ_*_ٺ_*_ٻ_*_ټ_*_ٽ_*_پ_*_ٿ_*_ڀ_*_ځ_*_ڂ_*_ڃ_*_ڄ_*_څ_*_چ_*_ڇ_*_ڈ_*_ډ_*_ڊ_*_ڋ_*_ڌ_*_ڍ_*_ڎ_*_ڏ_*_ڐ_*_ڑ_*_ڒ_*_ړ_*_ڔ_*_ڕ_*_ږ_*_ڗ_*_ژ_*_ڙ_*_ښ_*_ڛ_*_ڜ_*_ڝ_*_ڞ_*_ڟ_*_ڠ_*_ڡ_*_ڢ_*_ڣ_*_ڤ_*_ڥ_*_ڦ_*_ڧ_*_ڨ_*_ک_*_ڪ_*_ګ_*_ڬ_*_ڭ_*_ڮ_*_گ_*_ڰ_*_ڱ_*_ڲ_*_ڳ_*_ڴ_*_ڵ_*_ڶ_*_ڷ_*_ڸ_*_ڹ_*_ں_*_ڻ_*_ڼ_*_ڽ_*_ھ_*_ڿ_*_ۀ_*_ہ_*_ۂ_*_ۃ_*_ۄ_*_ۅ_*_ۆ_*_ۇ_*_ۈ_*_ۉ_*_ۊ_*_ۋ_*_ی_*_ۍ_*_ێ_*_ۏ_*_ې_*_ۑ_*_ے_*_ۓ_*_۔_*_ە_*_ۖ_*_ۗ_*_ۘ_*_ۙ_*_ۚ_*_ۛ_*_ۜ_*_۝_*_۞_*_۟_*_۠_*_ۡ_*_ۢ_*_ۣ_*_ۤ_*_ۥ_*_ۦ_*_ۧ_*_ۨ_*_۩_*_۪_*_۫_*_۬_*_ۭ_*_ۮ_*_ۯ_*_۰_*_۱_*_۲_*_۳_*_۴_*_۵_*_۶_*_۷_*_۸_*_۹_*_ۺ_*_ۻ_*_ۼ_*_۽_*_۾_*_ۿ'
  
  # U+0600 to U+06FF encoded using cp1252 
  BROKEN_AR = 'Ø€_*_Ø_*_Ø‚_*_Øƒ_*_Ø„_*_Ø…_*_Ø†_*_Ø‡_*_Øˆ_*_Ø‰_*_ØŠ_*_Ø‹_*_ØŒ_*_Ø_*_ØŽ_*_Ø_*_Ø_*_Ø‘_*_Ø’_*_Ø“_*_Ø”_*_Ø•_*_Ø–_*_Ø—_*_Ø˜_*_Ø™_*_Øš_*_Ø›_*_Øœ_*_Ø_*_Øž_*_ØŸ_*_Ø _*_Ø¡_*_Ø¢_*_Ø£_*_Ø¤_*_Ø¥_*_Ø¦_*_Ø§_*_Ø¨_*_Ø©_*_Øª_*_Ø«_*_Ø¬_*_Ø­_*_Ø®_*_Ø¯_*_Ø°_*_Ø±_*_Ø²_*_Ø³_*_Ø´_*_Øµ_*_Ø¶_*_Ø·_*_Ø¸_*_Ø¹_*_Øº_*_Ø»_*_Ø¼_*_Ø½_*_Ø¾_*_Ø¿_*_Ù€_*_Ù_*_Ù‚_*_Ùƒ_*_Ù„_*_Ù…_*_Ù†_*_Ù‡_*_Ùˆ_*_Ù‰_*_ÙŠ_*_Ù‹_*_ÙŒ_*_Ù_*_ÙŽ_*_Ù_*_Ù_*_Ù‘_*_Ù’_*_Ù“_*_Ù”_*_Ù•_*_Ù–_*_Ù—_*_Ù˜_*_Ù™_*_Ùš_*_Ù›_*_Ùœ_*_Ù_*_Ùž_*_ÙŸ_*_Ù _*_Ù¡_*_Ù¢_*_Ù£_*_Ù¤_*_Ù¥_*_Ù¦_*_Ù§_*_Ù¨_*_Ù©_*_Ùª_*_Ù«_*_Ù¬_*_Ù­_*_Ù®_*_Ù¯_*_Ù°_*_Ù±_*_Ù²_*_Ù³_*_Ù´_*_Ùµ_*_Ù¶_*_Ù·_*_Ù¸_*_Ù¹_*_Ùº_*_Ù»_*_Ù¼_*_Ù½_*_Ù¾_*_Ù¿_*_Ú€_*_Ú_*_Ú‚_*_Úƒ_*_Ú„_*_Ú…_*_Ú†_*_Ú‡_*_Úˆ_*_Ú‰_*_ÚŠ_*_Ú‹_*_ÚŒ_*_Ú_*_ÚŽ_*_Ú_*_Ú_*_Ú‘_*_Ú’_*_Ú“_*_Ú”_*_Ú•_*_Ú–_*_Ú—_*_Ú˜_*_Ú™_*_Úš_*_Ú›_*_Úœ_*_Ú_*_Úž_*_ÚŸ_*_Ú _*_Ú¡_*_Ú¢_*_Ú£_*_Ú¤_*_Ú¥_*_Ú¦_*_Ú§_*_Ú¨_*_Ú©_*_Úª_*_Ú«_*_Ú¬_*_Ú­_*_Ú®_*_Ú¯_*_Ú°_*_Ú±_*_Ú²_*_Ú³_*_Ú´_*_Úµ_*_Ú¶_*_Ú·_*_Ú¸_*_Ú¹_*_Úº_*_Ú»_*_Ú¼_*_Ú½_*_Ú¾_*_Ú¿_*_Û€_*_Û_*_Û‚_*_Ûƒ_*_Û„_*_Û…_*_Û†_*_Û‡_*_Ûˆ_*_Û‰_*_ÛŠ_*_Û‹_*_ÛŒ_*_Û_*_ÛŽ_*_Û_*_Û_*_Û‘_*_Û’_*_Û“_*_Û”_*_Û•_*_Û–_*_Û—_*_Û˜_*_Û™_*_Ûš_*_Û›_*_Ûœ_*_Û_*_Ûž_*_ÛŸ_*_Û _*_Û¡_*_Û¢_*_Û£_*_Û¤_*_Û¥_*_Û¦_*_Û§_*_Û¨_*_Û©_*_Ûª_*_Û«_*_Û¬_*_Û­_*_Û®_*_Û¯_*_Û°_*_Û±_*_Û²_*_Û³_*_Û´_*_Ûµ_*_Û¶_*_Û·_*_Û¸_*_Û¹_*_Ûº_*_Û»_*_Û¼_*_Û½_*_Û¾_*_Û¿'

  def initialize options = {}
    @replace_char = options[:replace_char] || '?'

    generate_mappings_hash
  end

  def show_mappings_hash
    i = 0
    justification = 0;
    mappings = ''
    ar = AR.split('_*_')

    @map.each do |broken, good|

      str = "[#{broken.join(', ')}]"
      
      justification = str.length if str.length > justification
      str = str.ljust justification      

      str += ' => '
      str += "[#{good.join(', ')}]"
      str += " # #{ar[i]}\n"

      mappings += str

      i += 1
    end

    puts mappings
  end

  def repair(str)
    @broken = str.unpack('C*')
    @repaired = []

    while @broken.length > 0

      # Try to use the mappings hash first and jump to the
      # next sequence if we succeed
      next if sequence_found_in_map

      # Try to handle ASCII chars if they are not a part
      # of a broken sequence
      next if byte_not_broken

      handle_unknown_byte
    end

    result = @repaired.pack('C*')
    @repaired = []
    result
  end

private
  
  def generate_mappings_hash
    @map = {}
    ar = AR.split('_*_')
    
    BROKEN_AR.split('_*_').each_with_index do |c, i| 
      @map[ c.unpack('C*') ] = ar[i].unpack('C*')
    end
  end
  
  def sequence_found_in_map
    (1..4).each do |i|
      broken_seq = @broken[0..i]
      if @map.has_key?(broken_seq) 
        @repaired += @map[broken_seq]
        @broken.slice!(0, i + 1) 
        return true
      end
    end
    false
  end

  def byte_not_broken
    if ( 
        @broken.first != 195 && # The byte is not the beginning of a broken sequence
        @broken.first <  256    # One byte char
       ) || (
        @broken.first == 195 &&          # The byte is the beginning of a sequence ...
        !(152..155).include?(@broken[1]) # ... but the next one is not, so it's not a sequence! 
       )
      # Add the byte to the repaired sequence and remove it from the broken one
      @repaired << @broken.shift 
    end
  end

  def handle_unknown_byte
    case
    # Handle the case when the last 2 bytes are the beginning of
    # a broken sequence but it's not found in the mappings hash.
    # The best guess is that they're 2 ASCII chars.
    # 
    # Handles: [195, *152..155]
    when @broken.length == 2
      @repaired << @broken.first << @broken[1]
      @broken.slice!(0, 2)

    # If we are here, then we have no idea what is this byte!
    # We will just use the replace_char to replace the unknown byte_not_broken
    # in the repaired sequence
    else
      @repaired += @replace_char.bytes.to_a
    end
  end
end
