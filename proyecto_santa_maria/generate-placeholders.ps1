$base = "d:\xampp\htdocs\santa_juana_santa_maria_2026\proyecto_santa_maria\pagina-web\productos\img-productos"

function New-SVG ($path, $name, $view, $icon, $gx1, $gy1, $gx2, $gy2, $ga, $gb, $gc) {
    $content = @"
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 300" width="400" height="300">
  <defs>
    <linearGradient id="bg" x1="$gx1" y1="$gy1" x2="$gx2" y2="$gy2">
      <stop offset="0%" stop-color="$ga"/>
      <stop offset="55%" stop-color="$gb"/>
      <stop offset="100%" stop-color="$gc"/>
    </linearGradient>
    <linearGradient id="ig" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" stop-color="#c8b88a" stop-opacity="0.88"/>
      <stop offset="100%" stop-color="#f3f6ef" stop-opacity="0.68"/>
    </linearGradient>
  </defs>
  <rect width="400" height="300" fill="url(#bg)"/>
  <rect x="1" y="1" width="398" height="298" fill="none" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.55"/>
  <line x1="0" y1="25" x2="25" y2="0" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.35"/>
  <line x1="375" y1="0" x2="400" y2="25" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.35"/>
  <line x1="0" y1="275" x2="25" y2="300" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.35"/>
  <line x1="375" y1="300" x2="400" y2="275" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.35"/>
  $icon
  <text x="200" y="248" text-anchor="middle" font-family="Arial,Helvetica,sans-serif" font-size="16" font-weight="bold" fill="#f3f6ef">$name</text>
  <text x="200" y="270" text-anchor="middle" font-family="Arial,Helvetica,sans-serif" font-size="12" fill="#c8b88a" fill-opacity="0.9">$view</text>
</svg>
"@
    [System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
}

# ── Icon SVG snippets ─────────────────────────────────────────────────────────

$i = @{}

# DAP – fertilizer bag
$i['dap_v1'] = '<polygon points="148,50 252,50 268,200 132,200" fill="#f3f6ef" fill-opacity="0.12" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.78"/><rect x="148" y="42" width="104" height="16" rx="6" fill="#c8b88a" fill-opacity="0.72"/><text x="200" y="122" text-anchor="middle" font-family="Arial,sans-serif" font-size="34" font-weight="bold" fill="#c8b88a">DAP</text><text x="200" y="152" text-anchor="middle" font-family="Arial,sans-serif" font-size="13" fill="#f3f6ef" fill-opacity="0.85">Fosfato Diamon&#xF3;nico</text><text x="200" y="174" text-anchor="middle" font-family="Arial,sans-serif" font-size="12" fill="#f3f6ef" fill-opacity="0.62">50 kg</text>'
$i['dap_v2'] = '<polygon points="134,50 244,50 258,200 120,200" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.72"/><line x1="244" y1="50" x2="258" y2="200" stroke="#c8b88a" stroke-width="2.5" stroke-opacity="0.45"/><rect x="134" y="42" width="110" height="16" rx="6" fill="#c8b88a" fill-opacity="0.65"/><text x="192" y="122" text-anchor="middle" font-family="Arial,sans-serif" font-size="30" font-weight="bold" fill="#c8b88a">DAP</text><text x="192" y="150" text-anchor="middle" font-family="Arial,sans-serif" font-size="12" fill="#f3f6ef" fill-opacity="0.80">Fosfato Diamon&#xF3;nico</text>'
$i['dap_v3'] = '<rect x="148" y="68" width="104" height="112" rx="5" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><text x="200" y="106" text-anchor="middle" font-family="Arial,sans-serif" font-size="28" font-weight="bold" fill="#c8b88a">DAP</text><line x1="160" y1="114" x2="240" y2="114" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.5"/><text x="200" y="132" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">18% N &#x2014; 46% P&#x2082;O&#x2085;</text><text x="200" y="150" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.68">Uso agr&#xED;cola &#x2022; ICA certificado</text><rect x="166" y="160" width="68" height="8" rx="3" fill="#c8b88a" fill-opacity="0.38"/>'

# Glifosato – spray bottle
$i['glifosato_v1'] = '<rect x="175" y="76" width="50" height="114" rx="10" fill="#f3f6ef" fill-opacity="0.12" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.78"/><rect x="186" y="60" width="28" height="22" rx="5" fill="#c8b88a" fill-opacity="0.72"/><rect x="211" y="66" width="30" height="11" rx="4" fill="#c8b88a" fill-opacity="0.58"/><line x1="183" y1="108" x2="217" y2="108" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><line x1="183" y1="120" x2="217" y2="120" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><line x1="183" y1="132" x2="217" y2="132" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><text x="200" y="163" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" font-weight="bold" fill="#c8b88a">480 g/L SL &#x2014; 1 L</text>'
$i['glifosato_v2'] = '<rect x="184" y="76" width="40" height="114" rx="10" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.72"/><rect x="192" y="60" width="26" height="22" rx="5" fill="#c8b88a" fill-opacity="0.65"/><rect x="216" y="66" width="28" height="11" rx="4" fill="#c8b88a" fill-opacity="0.50"/><line x1="192" y1="108" x2="216" y2="108" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><line x1="192" y1="120" x2="216" y2="120" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="206" y="162" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#c8b88a">1 L</text>'
$i['glifosato_v3'] = '<rect x="148" y="64" width="104" height="122" rx="6" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><rect x="160" y="73" width="80" height="10" rx="3" fill="#c8b88a" fill-opacity="0.65"/><line x1="158" y1="89" x2="242" y2="89" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="200" y="112" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">INGREDIENTE ACTIVO</text><text x="200" y="130" text-anchor="middle" font-family="Arial,sans-serif" font-size="14" font-weight="bold" fill="#c8b88a">Glifosato 480 g/L</text><line x1="158" y1="138" x2="242" y2="138" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="200" y="156" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.68">Herbicida sist&#xE9;mico &#x2022; Reg. ICA</text>'

# Mancozeb – cylindrical can
$i['mancozeb_v1'] = '<rect x="155" y="80" width="90" height="114" rx="6" fill="#f3f6ef" fill-opacity="0.12" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.78"/><ellipse cx="200" cy="80" rx="45" ry="13" fill="#c8b88a" fill-opacity="0.72"/><ellipse cx="200" cy="194" rx="45" ry="13" fill="#c8b88a" fill-opacity="0.55"/><text x="200" y="133" text-anchor="middle" font-family="Arial,sans-serif" font-size="15" font-weight="bold" fill="#c8b88a">MANCOZEB</text><text x="200" y="153" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.82">800 g/kg WP</text><text x="200" y="173" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.65">500 g &#x2014; Fungicida</text>'
$i['mancozeb_v2'] = '<rect x="163" y="80" width="76" height="114" rx="6" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.72"/><ellipse cx="201" cy="80" rx="38" ry="12" fill="#c8b88a" fill-opacity="0.65"/><ellipse cx="201" cy="194" rx="38" ry="12" fill="#c8b88a" fill-opacity="0.50"/><line x1="239" y1="80" x2="239" y2="194" stroke="#c8b88a" stroke-width="2" stroke-opacity="0.40"/><text x="201" y="133" text-anchor="middle" font-family="Arial,sans-serif" font-size="14" font-weight="bold" fill="#c8b88a">MANCOZEB</text><text x="201" y="155" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.78">800 g/kg WP</text>'
$i['mancozeb_v3'] = '<rect x="148" y="64" width="104" height="122" rx="6" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><text x="200" y="100" text-anchor="middle" font-family="Arial,sans-serif" font-size="14" font-weight="bold" fill="#c8b88a">MANCOZEB</text><line x1="158" y1="108" x2="242" y2="108" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="200" y="126" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">Concentraci&#xF3;n: 800 g/kg</text><text x="200" y="144" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.75">Formulaci&#xF3;n: WP</text><text x="200" y="162" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.65">Caf&#xE9;, papa, tomate</text><rect x="166" y="170" width="68" height="8" rx="3" fill="#c8b88a" fill-opacity="0.35"/>'

# Triple 15 – NPK fertilizer bag
$i['triple15_v1'] = '<polygon points="148,50 252,50 268,200 132,200" fill="#f3f6ef" fill-opacity="0.12" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.78"/><rect x="148" y="42" width="104" height="16" rx="6" fill="#c8b88a" fill-opacity="0.72"/><text x="200" y="116" text-anchor="middle" font-family="Arial,sans-serif" font-size="24" font-weight="bold" fill="#c8b88a">15 - 15 - 15</text><text x="200" y="142" text-anchor="middle" font-family="Arial,sans-serif" font-size="15" fill="#f3f6ef" fill-opacity="0.85">N &#x2022; P &#x2022; K</text><text x="200" y="165" text-anchor="middle" font-family="Arial,sans-serif" font-size="12" fill="#f3f6ef" fill-opacity="0.68">Fertilizante Compuesto</text><text x="200" y="184" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.55">50 kg</text>'
$i['triple15_v2'] = '<polygon points="134,50 244,50 258,200 120,200" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.72"/><line x1="244" y1="50" x2="258" y2="200" stroke="#c8b88a" stroke-width="2.5" stroke-opacity="0.42"/><rect x="134" y="42" width="110" height="16" rx="6" fill="#c8b88a" fill-opacity="0.65"/><text x="192" y="116" text-anchor="middle" font-family="Arial,sans-serif" font-size="22" font-weight="bold" fill="#c8b88a">15 - 15 - 15</text><text x="192" y="143" text-anchor="middle" font-family="Arial,sans-serif" font-size="14" fill="#f3f6ef" fill-opacity="0.80">N &#x2022; P &#x2022; K</text>'
$i['triple15_v3'] = '<rect x="148" y="68" width="104" height="112" rx="5" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><text x="200" y="104" text-anchor="middle" font-family="Arial,sans-serif" font-size="20" font-weight="bold" fill="#c8b88a">15 &#x2014; 15 &#x2014; 15</text><line x1="160" y1="112" x2="240" y2="112" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><text x="200" y="130" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">N: 15% &#x2022; P&#x2082;O&#x2085;: 15% &#x2022; K&#x2082;O: 15%</text><text x="200" y="148" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.68">Granulado &#x2022; 50 kg &#x2022; ICA cert.</text><rect x="166" y="157" width="68" height="8" rx="3" fill="#c8b88a" fill-opacity="0.38"/>'

# Machete – blade tool
$i['machete_v1'] = '<g transform="rotate(-10, 200, 150)"><rect x="80" y="136" width="200" height="18" rx="3" fill="url(#ig)" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.65"/><line x1="80" y1="154" x2="280" y2="136" stroke="#f3f6ef" stroke-width="1" stroke-opacity="0.18"/><rect x="270" y="128" width="44" height="34" rx="8" fill="#c8b88a" fill-opacity="0.72"/><line x1="270" y1="139" x2="270" y2="151" stroke="#0f3f4f" stroke-width="2" stroke-opacity="0.45"/></g>'
$i['machete_v2'] = '<g transform="rotate(-6, 200, 150)"><rect x="88" y="140" width="185" height="16" rx="3" fill="url(#ig)" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.58"/><rect x="268" y="132" width="40" height="30" rx="8" fill="#c8b88a" fill-opacity="0.65"/><line x1="88" y1="156" x2="270" y2="140" stroke="#f3f6ef" stroke-width="0.8" stroke-opacity="0.15"/></g>'
$i['machete_v3'] = '<rect x="148" y="64" width="104" height="122" rx="6" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><text x="200" y="100" text-anchor="middle" font-family="Arial,sans-serif" font-size="12" font-weight="bold" fill="#c8b88a">MACHETE AGR&#xCD;COLA</text><line x1="158" y1="108" x2="242" y2="108" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="200" y="126" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">Acero inox. templado</text><text x="200" y="144" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.75">Mango ergon&#xF3;mico PP</text><text x="200" y="162" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.65">Long. total: 62 cm &#x2022; 800 g</text>'

# Semillas de Maíz – corn kernels
$i['semillas-maiz_v1'] = '<ellipse cx="184" cy="112" rx="17" ry="24" fill="#c8b88a" fill-opacity="0.75" stroke="#f3f6ef" stroke-width="0.8" stroke-opacity="0.35"/><ellipse cx="216" cy="107" rx="17" ry="24" fill="#c8b88a" fill-opacity="0.70"/><ellipse cx="200" cy="146" rx="17" ry="24" fill="#c8b88a" fill-opacity="0.65"/><ellipse cx="172" cy="148" rx="14" ry="20" fill="#c8b88a" fill-opacity="0.58"/><ellipse cx="228" cy="148" rx="14" ry="20" fill="#c8b88a" fill-opacity="0.58"/><text x="200" y="193" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.72">Zea mays L. &#x2014; Semilla cert.</text>'
$i['semillas-maiz_v2'] = '<ellipse cx="190" cy="116" rx="15" ry="22" fill="#c8b88a" fill-opacity="0.70"/><ellipse cx="218" cy="111" rx="15" ry="22" fill="#c8b88a" fill-opacity="0.65"/><ellipse cx="205" cy="148" rx="15" ry="22" fill="#c8b88a" fill-opacity="0.60"/><ellipse cx="178" cy="150" rx="13" ry="18" fill="#c8b88a" fill-opacity="0.55"/><ellipse cx="232" cy="150" rx="13" ry="18" fill="#c8b88a" fill-opacity="0.55"/><text x="204" y="193" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.70">Semilla certificada</text>'
$i['semillas-maiz_v3'] = '<rect x="148" y="64" width="104" height="122" rx="6" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><text x="200" y="100" text-anchor="middle" font-family="Arial,sans-serif" font-size="12" font-weight="bold" fill="#c8b88a">SEMILLA CERTIFICADA</text><line x1="158" y1="108" x2="242" y2="108" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="200" y="126" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">Variedad: ICA V-109</text><text x="200" y="144" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.75">Germ.: &#x2265; 90% &#x2022; 85 d&#xED;as</text><text x="200" y="162" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.65">Bolsa: 1 kg &#x2022; Reg. ICA cert.</text>'

# Cal Dolomita – mineral bag
$i['cal-dolomita_v1'] = '<polygon points="148,50 252,50 268,200 132,200" fill="#f3f6ef" fill-opacity="0.12" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.78"/><rect x="148" y="42" width="104" height="16" rx="6" fill="#c8b88a" fill-opacity="0.72"/><text x="200" y="116" text-anchor="middle" font-family="Arial,sans-serif" font-size="19" font-weight="bold" fill="#c8b88a">CAL DOLOMITA</text><text x="200" y="143" text-anchor="middle" font-family="Arial,sans-serif" font-size="13" fill="#f3f6ef" fill-opacity="0.85">Ca &#x2022; Mg</text><circle cx="184" cy="168" r="5" fill="#f3f6ef" fill-opacity="0.32"/><circle cx="200" cy="162" r="4" fill="#f3f6ef" fill-opacity="0.28"/><circle cx="216" cy="168" r="5" fill="#f3f6ef" fill-opacity="0.32"/><circle cx="192" cy="176" r="4" fill="#f3f6ef" fill-opacity="0.26"/><circle cx="208" cy="176" r="4" fill="#f3f6ef" fill-opacity="0.26"/>'
$i['cal-dolomita_v2'] = '<polygon points="134,50 244,50 258,200 120,200" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.72"/><line x1="244" y1="50" x2="258" y2="200" stroke="#c8b88a" stroke-width="2.5" stroke-opacity="0.42"/><rect x="134" y="42" width="110" height="16" rx="6" fill="#c8b88a" fill-opacity="0.65"/><text x="192" y="116" text-anchor="middle" font-family="Arial,sans-serif" font-size="17" font-weight="bold" fill="#c8b88a">CAL DOLOMITA</text><text x="192" y="143" text-anchor="middle" font-family="Arial,sans-serif" font-size="13" fill="#f3f6ef" fill-opacity="0.80">Ca &#x2022; Mg</text>'
$i['cal-dolomita_v3'] = '<rect x="148" y="68" width="104" height="112" rx="5" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><text x="200" y="104" text-anchor="middle" font-family="Arial,sans-serif" font-size="15" font-weight="bold" fill="#c8b88a">CAL DOLOMITA</text><line x1="160" y1="112" x2="240" y2="112" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><text x="200" y="130" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">CaO: 30% &#x2022; MgO: 18%</text><text x="200" y="148" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.75">Neutraliza acidez del suelo</text><text x="200" y="166" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.65">50 kg &#x2022; Granulada</text>'

# Cipermetrina – insecticide bottle
$i['cipermetrina_v1'] = '<rect x="175" y="76" width="50" height="114" rx="10" fill="#f3f6ef" fill-opacity="0.12" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.78"/><rect x="186" y="60" width="28" height="22" rx="5" fill="#c8b88a" fill-opacity="0.72"/><rect x="211" y="66" width="30" height="11" rx="4" fill="#c8b88a" fill-opacity="0.58"/><line x1="183" y1="108" x2="217" y2="108" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><line x1="183" y1="120" x2="217" y2="120" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><line x1="183" y1="132" x2="217" y2="132" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.45"/><text x="200" y="163" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" font-weight="bold" fill="#c8b88a">200 g/L EC &#x2014; 1 L</text>'
$i['cipermetrina_v2'] = '<rect x="184" y="76" width="40" height="114" rx="10" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.72"/><rect x="192" y="60" width="26" height="22" rx="5" fill="#c8b88a" fill-opacity="0.65"/><rect x="216" y="66" width="28" height="11" rx="4" fill="#c8b88a" fill-opacity="0.50"/><line x1="192" y1="108" x2="216" y2="108" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><line x1="192" y1="120" x2="216" y2="120" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="206" y="162" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#c8b88a">1 L</text>'
$i['cipermetrina_v3'] = '<rect x="148" y="64" width="104" height="122" rx="6" fill="#f3f6ef" fill-opacity="0.10" stroke="#c8b88a" stroke-width="1.5" stroke-opacity="0.75"/><rect x="160" y="73" width="80" height="10" rx="3" fill="#c8b88a" fill-opacity="0.65"/><line x1="158" y1="89" x2="242" y2="89" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="200" y="112" text-anchor="middle" font-family="Arial,sans-serif" font-size="11" fill="#f3f6ef" fill-opacity="0.85">INGREDIENTE ACTIVO</text><text x="200" y="130" text-anchor="middle" font-family="Arial,sans-serif" font-size="13" font-weight="bold" fill="#c8b88a">Cipermetrina 200 g/L</text><line x1="158" y1="138" x2="242" y2="138" stroke="#c8b88a" stroke-width="1" stroke-opacity="0.40"/><text x="200" y="156" text-anchor="middle" font-family="Arial,sans-serif" font-size="10" fill="#f3f6ef" fill-opacity="0.68">Insecticida &#x2022; Reg. ICA certificado</text>'

# ── Gradient variants per view ────────────────────────────────────────────────
# v1 front:  diagonal TL→BR, deep to forest
# v2 side:   vertical T→B, mid to deep
# v3 detail: diagonal TR→BL, forest to mid

$views = @(
    [PSCustomObject]@{ num=1; ext='svg'; label='Vista frontal';        gx1='0%'; gy1='0%'; gx2='100%'; gy2='100%'; ga='#0f3f4f'; gb='#1f6c72'; gc='#2f6f52' },
    [PSCustomObject]@{ num=2; ext='svg'; label='Vista lateral';        gx1='0%'; gy1='0%'; gx2='100%'; gy2='50%';  ga='#0c3545'; gb='#175d63'; gc='#1e5c43' },
    [PSCustomObject]@{ num=3; ext='svg'; label='Detalle etiqueta';     gx1='100%';gy1='0%';gx2='0%';  gy2='100%'; ga='#122f3e'; gb='#1a5260'; gc='#265040' }
)

$products = @(
    [PSCustomObject]@{ prefix='dap';          name='Fertilizante DAP'        },
    [PSCustomObject]@{ prefix='glifosato';    name='Herbicida Glifosato'     },
    [PSCustomObject]@{ prefix='mancozeb';     name='Fungicida Mancozeb'      },
    [PSCustomObject]@{ prefix='triple15';     name='Abono Triple 15'         },
    [PSCustomObject]@{ prefix='machete';      name='Machete Agr&#xED;cola'   },
    [PSCustomObject]@{ prefix='semillas-maiz';name='Semillas de Ma&#xED;z'   },
    [PSCustomObject]@{ prefix='cal-dolomita'; name='Cal Dolomita'            },
    [PSCustomObject]@{ prefix='cipermetrina'; name='Insecticida Cipermetrina'}
)

# ── Generate all 24 SVG files ─────────────────────────────────────────────────
$count = 0
foreach ($prod in $products) {
    foreach ($v in $views) {
        $iconKey = "$($prod.prefix)_v$($v.num)"
        $icon    = $i[$iconKey]
        $file    = Join-Path $base "$($prod.prefix)-$($v.num).$($v.ext)"
        New-SVG -path $file -name $prod.name -view $v.label -icon $icon `
                -gx1 $v.gx1 -gy1 $v.gy1 -gx2 $v.gx2 -gy2 $v.gy2 `
                -ga $v.ga -gb $v.gb -gc $v.gc
        Write-Host "OK  $($prod.prefix)-$($v.num).$($v.ext)"
        $count++
    }
}

Write-Host "`nGenerados $count archivos SVG en $base"
