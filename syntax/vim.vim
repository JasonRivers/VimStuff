" Vim syntax file
" Language:       Vim 7.2 script
" Maintainer:     Dr. Charles E. Campbell, Jr. <NdrOchipS@PcampbellAfamily.Mbiz>
" Last Change:    Nov 18, 2009
" Version:        7.2-95

" Modified by NGN

if exists('b:current_syntax') | fini | en

" vimTodo: contains common special-notices for comments
" Use the vimCommentGroup cluster to add your own.
sy cluster vimCommentGroup contains=@Spell

" regular vim commands
sy keyword vimCommand contained abc[lear] argdo argu[ment] bel[owright] bN[ext] breakd[el] b[uffer] caddb[uffer] cb[uffer] cex[pr] cg[etfile] checkt[ime] cnew[er] col[der] con[tinue] cq[uit] delc[ommand] diffoff diffu[pdate] dr[op] echom[sg] em[enu] en[dif] ex files fini[sh] foldc[lose] for grepa[dd] helpg[rep] iabc[lear] imapc[lear] j[oin] keepj[umps] laddf[ile] lb[uffer] le[ft] lfir[st] lgr[ep] ll lmapc[lear] lnf[ile] lockv[ar] lp[revious] lv[imgrep] ma[rk] mk[exrc] mkv[imrc] mz[scheme] N[ext] ol[dfiles] opt[ions] perld[o] pp[op] P[rint] promptr[epl] ptj[ump] ptp[revious] pw[d] q[uit] redi[r] reg[isters] rew[ind] rubyd[o] sal[l] sba[ll] sbn[ext] sb[uffer] setf[iletype] sfir[st] sim[alt] sm[ap] sN[ext] snoremenu spe[llgood] spellw[rong] sta[g] stj[ump] sun[hide] sv[iew] tabc[lose] tabfir[st] tabn[ext] tabr[ewind] tc[l] tf[irst] tm to[pleft] ts[elect] u[ndo] unlo[ckvar] vert[ical] vi[sual] vs[plit] windo wN[ext] w[rite] xa[ll] xmenu xnoremenu
sy keyword vimCommand contained abo[veleft] arge[dit] as[cii] bf[irst] bo[tright] breakl[ist] buffers cad[dexpr] cc cf[ile] c[hange] cla[st] cn[ext] colo[rscheme] cope[n] cr[ewind] d[elete] diffpatch dig[raphs] ds[earch] echon emenu* endt[ry] exi[t] filetype fir[st] folddoc[losed] fu[nction] ha[rdcopy] helpt[ags] if is[earch] ju[mps] kee[pmarks] lan[guage] lc[d] lefta[bove] lgetb[uffer] lgrepa[dd] lla[st] lnew[er] lNf[ile] lol[der] lr[ewind] lvimgrepa[dd] marks mks[ession] mod[e] nbkey nmapc[lear] omapc[lear] pc[lose] po[p] pre[serve] profd[el] ps[earch] ptl[ast] ptr[ewind] pyf[ile] quita[ll] red[o] res[ize] ri[ght] rubyf[ile] san[dbox] sbf[irst] sbN[ext] scripte[ncoding] setg[lobal] sh[ell] sla[st] sme sni[ff] sor[t] spelli[nfo] sp[lit] startg[replace] st[op] sunme syncbind tabd[o] tabl[ast] tabN[ext] tabs tcld[o] th[row] tm[enu] tp[revious] tu undoj[oin] up[date] vie[w] viu[sage] wa[ll] winp[os] wp[revious] ws[verb] x[it] XMLent xunme
sy keyword vimCommand contained al[l] argg[lobal] bad[d] bl[ast] bp[revious] br[ewind] bun[load] caddf[ile] ccl[ose] cfir[st] changes cl[ist] cN[ext] comc[lear] co[py] cuna[bbrev] delf[unction] diffpu[t] di[splay] dsp[lit] e[dit] endfo[r] endw[hile] exu[sage] fina[lly] fix[del] foldd[oopen] go[to] h[elp] hid[e] ij[ump] isp[lit] k laddb[uffer] la[st] lch[dir] lex[pr] lgete[xpr] lh[elpgrep] lli[st] lne[xt] lo[adview] lop[en] ls lw[indow] mat[ch] mksp[ell] m[ove] new noh[lsearch] on[ly] ped[it] popu prev[ious] prof[ile] pta[g] ptn[ext] pts[elect] py[thon] r[ead] redr[aw] ret[ab] rightb[elow] ru[ntime] sa[rgument] sbl[ast] sbp[revious] scrip[tnames] setl[ocal] sign sl[eep] smenu sno[magic] so[urce] spellr[epall] spr[evious] star[tinsert] stopi[nsert] sunmenu t tabe[dit] tabm[ove] tabo[nly] ta[g] tclf[ile] tj[ump] tn[ext] tr[ewind] tu[nmenu] undol[ist] verb[ose] vim[grep] vmapc[lear] wh[ile] win[size] wq wv[iminfo] xmapc[lear] XMLns xunmenu
sy keyword vimCommand contained arga[dd] argl[ocal] ba[ll] bm[odified] brea[k] bro[wse] bw[ipeout] cal[l] cd cgetb[uffer] chd[ir] clo[se] cnf[ile] comp[iler] cpf[ile] cw[indow] delm[arks] diffsplit dj[ump] earlier el[se] endf[unction] ene[w] f[ile] fin[d] fo[ld] foldo[pen] gr[ep] helpf[ind] his[tory] il[ist] iuna[bbrev] keepalt lad[dexpr] later lcl[ose] lf[ile] lg[etfile] l[ist] lmak[e] lN[ext] loc[kmarks] lpf[ile] lt[ag] mak[e] menut[ranslate] mkvie[w] mzf[ile] n[ext] nu[mber] o[pen] pe[rl] popu[p] p[rint] promptf[ind] ptf[irst] ptN[ext] pu[t] qa[ll] rec[over] redraws[tatus] retu[rn] rub[y] rv[iminfo] sav[eas] sbm[odified] sbr[ewind] se[t] sf[ind] sil[ent] sm[agic] sn[ext] snoreme spelld[ump] spellu[ndo] sre[wind] startr[eplace] sts[elect] sus[pend] tab tabf[ind] tabnew tabp[revious] tags te[aroff] tl[ast] tN[ext] try una[bbreviate] unh[ide] ve[rsion] vimgrepa[dd] vne[w] winc[md] wn[ext] wqa[ll] X xme xnoreme y[ank]
sy keyword vimCommand contained argd[elete] ar[gs] bd[elete] bn[ext] breaka[dd] bufdo cabc[lear] cat[ch] ce[nter] cgete[xpr] che[ckpath] cmapc[lear] cNf[ile] conf[irm] cp[revious] debugg[reedy] diffg[et] diffthis dl[ist] echoe[rr] elsei[f]
sy keyword vimCommand contained unl[et]
sy match vimCommand contained "\<z[-+^.=]"

" vimOptions are caught only when contained in a vimSet
sy keyword vimOption contained acd ambiwidth arabicshape autowriteall backupdir bdlay binary breakat bufhidden cdpath cin cinwords columns completeopt cpo cscopetagorder csre csrelative csverb deco dictionary directory ed encoding errorfile exrc fdls fencs fileformats fmr foldlevel foldtext fsync gfs gtl guioptions hf hk hlsearch imak ims indentexpr is isp keywordprg lazyredraw lispwords ls makeef maxmapdepth mfd mmd modified mousemodel msm numberwidth operatorfunc pastetoggle pexpr pmbfn printexpr pt readonly rightleft rtp sb scroll sect sessionoptions shellpipe shellxquote showbreak shq slm smd spc spf sr sta sts swapfile sxq tabpagemax tags tbis terse thesaurus titleold toolbariconsize tsr ttyfast tx ut verbosefile virtualedit wb wfw wildcharm winaltkeys winminwidth wmnu write
sy keyword vimOption contained ai ambw ari aw backupext beval biosk brk buflisted cedit cindent clipboard com confirm cpoptions cscopeverbose cuc def diff display edcompatible endofline errorformat fcl fdm fex filetype fo foldlevelstart formatexpr ft gfw gtt guipty hh hkmap ic imc imsearch indentkeys isf isprint km lbr list lsp makeprg maxmem mh mmp more mouses mzq nuw opfunc patchexpr pfn popt printfont pumheight redrawtime rightleftcmd ru sbo scrollbind sections sft shellquote shiftround showcmd si sm sn spell spl srr stal su swapsync syn tabstop tagstack tbs textauto tildeop titlestring top ttimeout ttym uc vb vfile visualbell wc wh wildignore window winwidth wmw writeany
sy keyword vimOption contained akm anti arshape awa backupskip bex bioskey browsedir buftype cf cink cmdheight comments consk cpt cspc cul define diffexpr dy ef eol esckeys fcs fdn ff fillchars foldclose foldmarker formatlistpat gcr ghr guicursor guitablabel hi hkmapp icon imcmdline inc indk isfname joinspaces kmp lcs listchars lw mat maxmempattern mis mmt mouse mouseshape mzquantum odev osfiletype patchmode ph preserveindent printheader pvh remap rl ruf sbr scrolljump secure sh shellredir shiftwidth showfulltag sidescroll smartcase so spellcapcheck splitbelow ss startofline sua swb synmaxcol tag tal tenc textmode timeout tl tpm ttimeoutlen ttymouse ul vbs vi vop wcm whichwrap wildmenu winfixheight wiv wop writebackup
sy keyword vimOption contained al antialias autochdir background balloondelay bexpr bk bs casemap cfu cinkeys cmdwinheight commentstring conskey cscopepathcomp csprg cursorcolumn delcombine diffopt ea efm ep et fdc fdo ffs fk foldcolumn foldmethod formatoptions gd go guifont guitabtooltip hid hkp iconstring imd include inex isi js kp linebreak lm lz matchpairs maxmemtot mkspellmem mod mousef mouset nf oft pa path pheader previewheight printmbcharset pvw report rlc ruler sc scrolloff sel shcf shellslash shm showmatch sidescrolloff smartindent softtabstop spellfile splitright ssl statusline suffixes swf syntax tagbsearch tb term textwidth timeoutlen tm tr ttm ttyscroll undolevels vdir viewdir wa wd wi wildmode winfixwidth wiw wrap writedelay
sy keyword vimOption contained aleph ar autoindent backspace ballooneval bg bkc bsdir cb ch cino cmp compatible copyindent cscopeprg csqf cursorline dex digraph ead ei equalalways eventignore fde fdt fileencoding fkmap foldenable foldminlines formatprg gdefault gp guifontset helpfile hidden hl ignorecase imdisable includeexpr inf isident key langmap lines lmap ma matchtime mco ml modeline mousefocus mousetime nrformats ofu para pdev pi previewwindow printmbfont qe restorescreen ro rulerformat scb scrollopt selection shell shelltemp shortmess showmode siso smarttab sol spelllang spr ssop stl suffixesadd switchbuf ta taglength tbi termbidi tf title to ts tty ttytype updatecount ve viewoptions wak weirdinvert wig wildoptions winheight wm wrapmargin ws
sy keyword vimOption contained allowrevins arab autoread backup balloonexpr bh bl bsk ccv charconvert cinoptions cms complete cot cscopequickfix cst cwh dg dip eadirection ek equalprg ex fdi fen fileencodings flp foldexpr foldnestmax fp gfm grepformat guifontwide helpheight highlight hlg im imi incsearch infercase isk keymap langmenu linespace loadplugins macatsui maxcombine mef mls modelines mousehide mp nu omnifunc paragraphs penc pm printdevice printoptions quoteescape revins rs runtimepath scr scs selectmode shellcmdflag shelltype shortname showtabline sj smc sp spellsuggest sps st stmp sw sws tabline tagrelative tbidi termencoding tgst titlelen toolbar tsl ttybuiltin tw updatetime verbose viminfo warn wfh wildchar wim winminheight wmh wrapscan ww
sy keyword vimOption contained altkeymap arabic autowrite backupcopy bdir bin bomb bt cd ci cinw co completefunc cp cscopetag csto debug dict dir eb enc errorbells expandtab fdl fenc fileformat fml foldignore foldopen fs gfn grepprg guiheadroom helplang history hls imactivatekey iminsert inde insertmode iskeyword keymodel laststatus lisp lpl magic maxfuncdepth menuitems mm modifiable mousem mps number opendevice paste pex pmbcs printencoding prompt rdt ri

" vimOptions: These are the turn-off setting variants
sy keyword vimOption contained noacd noallowrevins noantialias noarabic noarshape noautoread noaw noballooneval nobinary nobk nobuflisted nocin noconfirm nocopyindent nocscopeverbose nocuc nocursorline nodg noimdisable noeb noedcompatible noendofline noequalalways noesckeys noex noexrc nofk nofoldenable nogdefault nohid nohk nohkmapp nohls noic noignorecase noimc noimd noinf noinsertmode nojoinspaces nolazyredraw nolinebreak nolist nolpl noma nomagic noml nomodeline nomodified nomousef nomousehide nonumber noopendevice nopi nopreviewwindow nopvw noremap norevins norightleft norl noro noru nosb noscb noscs nosft noshelltemp noshortname noshowfulltag noshowmode nosm nosmartindent nosmd nosol nosplitbelow nospr nossl nostartofline noswapfile nota notagrelative notbi notbs noterse notextmode notgst notimeout noto notr nottybuiltin notx novisualbell nowarn noweirdinvert nowfw nowinfixheight nowiv nowrap nowrite nowritebackup
sy keyword vimOption contained noai noaltkeymap noar noarabicshape noautochdir noautowrite noawa nobeval nobiosk nobl nocf nocindent noconsk nocp nocst nocul nodeco nodiff noea noed noek noeol noerrorbells noet noexpandtab nofen nofkmap nogd noguipty nohidden nohkmap nohkp nohlsearch noicon noim noimcmdline noincsearch noinfercase nois nojs nolbr nolisp noloadplugins nolz nomacatsui nomh nomod nomodifiable nomore nomousefocus nonu noodev nopaste nopreserveindent noprompt noreadonly norestorescreen nori norightleftcmd norlc nors noruler nosc noscrollbind nosecure noshellslash noshiftround noshowcmd noshowmatch nosi nosmartcase nosmarttab nosn nospell nosplitright nosr nosta nostmp noswf notagbsearch notagstack notbidi notermbidi notextauto notf notildeop notitle notop nottimeout nottyfast novb nowa nowb nowfh nowildmenu nowinfixwidth nowmnu nowrapscan nowriteany nows
sy keyword vimOption contained noakm noanti noarab noari noautoindent noautowriteall nobackup nobin nobioskey nobomb noci nocompatible noconskey nocscopetag nocsre nocsrelative nocsverb nocursorcolumn nodelcombine nodigraph

" vimOptions: These are the invertible variants
sy keyword vimOption contained invacd invallowrevins invantialias invarabic invarshape invautoread invaw invballooneval invbinary invbk invbuflisted invcin invconfirm invcopyindent invcscopeverbose invcuc invcursorline invdg invdisable inveb invedcompatible invendofline invequalalways invesckeys invex invexrc invfk invfoldenable invgdefault invhid invhk invhkmapp invhls invic invignorecase invimc invimd invinf invinsertmode invjoinspaces invlazyredraw invlinebreak invlist invlpl invma invmagic invml invmodeline invmodified invmousef invmousehide invnumber invopendevice invpi invpreviewwindow invpvw invremap invrevins invrightleft invrl invro invru invsb invscb invscs invsft invshelltemp invshortname invshowfulltag invshowmode invsm invsmartindent invsmd invsol invsplitbelow invspr invssl invstartofline invswapfile invta invtagrelative invtbi invtbs invterse invtextmode invtgst invtimeout invto invtr invttybuiltin invtx invvisualbell invwarn invweirdinvert invwfw invwinfixheight invwiv invwrap invwrite invwritebackup
sy keyword vimOption contained invai invaltkeymap invar invarabicshape invautochdir invautowrite invawa invbeval invbiosk invbl invcf invcindent invconsk invcp invcst invcul invdeco invdiff invea inved invek inveol inverrorbells invet invexpandtab invfen invfkmap invgd invguipty invhidden invhkmap invhkp invhlsearch invicon invim invimcmdline invincsearch invinfercase invis invjs invlbr invlisp invloadplugins invlz invmacatsui invmh invmod invmodifiable invmore invmousefocus invnu invodev invpaste invpreserveindent invprompt invreadonly invrestorescreen invri invrightleftcmd invrlc invrs invruler invsc invscrollbind invsecure invshellslash invshiftround invshowcmd invshowmatch invsi invsmartcase invsmarttab invsn invspell invsplitright invsr invsta invstmp invswf invtagbsearch invtagstack invtbidi invtermbidi invtextauto invtf invtildeop invtitle invtop invttimeout invttyfast invvb invwa invwb invwfh invwildmenu invwinfixwidth invwmnu invwrapscan invwriteany invws
sy keyword vimOption contained invakm invanti invarab invari invautoindent invautowriteall invbackup invbin invbioskey invbomb invci invcompatible invconskey invcscopetag invcsre invcsrelative invcsverb invcursorcolumn invdelcombine invdigraph

" termcap codes (which can also be set)
sy keyword vimOption contained t_AB t_al t_bc t_ce t_cl t_Co t_cs t_Cs t_CS t_CV t_da t_db t_dl t_DL t_EI t_F1 t_F2 t_F3 t_F4 t_F5 t_F6 t_F7 t_F8 t_F9 t_fs t_IE t_IS t_k1 t_K1 t_k2 t_k3 t_K3 t_k4 t_K4 t_k5 t_K5 t_k6 t_K6 t_k7 t_K7 t_k8 t_K8 t_k9 t_K9 t_KA t_kb t_kB t_KB t_KC t_kd t_kD t_KD t_ke t_KE t_KF t_KG t_kh t_KH t_kI t_KI t_KJ t_KK t_kl t_KL t_kN t_kP t_kr t_ks t_ku t_le t_mb t_md t_me t_mr t_ms t_nd t_op t_RI t_RV t_Sb t_se t_Sf t_SI t_so t_sr t_te t_ti t_ts t_ue t_us t_ut t_vb t_ve t_vi t_vs t_WP t_WS t_xs t_ZH t_ZR
sy keyword vimOption contained t_AF t_AL t_cd t_Ce t_cm
sy match vimOption contained "t_\(%1\|#2\|#4\|@7\|*7\|&8\|%i\|k;\)"

" unsupported settings: these are supported by vi but don't do anything in vim
sy keyword vimErrSetting contained hardtabs ht w1200 w300 w9600

" AutoCmd Events
sy case ignore
sy keyword vimAutoEvent contained BufAdd BufCreate BufDelete BufEnter BufFilePost BufFilePre BufHidden BufLeave BufNew BufNewFile BufRead BufReadCmd BufReadPost BufReadPre BufUnload BufWinEnter BufWinLeave BufWipeout BufWrite BufWriteCmd BufWritePost BufWritePre Cmd-event CmdwinEnter CmdwinLeave ColorScheme CursorHold CursorHoldI CursorMoved CursorMovedI EncodingChanged FileAppendCmd FileAppendPost FileAppendPre FileChangedRO FileChangedShell FileChangedShellPost FileEncoding FileReadCmd FileReadPost FileReadPre FileType FileWriteCmd FileWritePost FileWritePre FilterReadPost FilterReadPre FilterWritePost FilterWritePre FocusGained FocusLost FuncUndefined GUIEnter GUIFailed InsertChange InsertEnter InsertLeave MenuPopup QuickFixCmdPost QuickFixCmdPre RemoteReply SessionLoadPost ShellCmdPost ShellFilterPost SourceCmd SourcePre SpellFileMissing StdinReadPost StdinReadPre SwapExists Syntax TabEnter TabLeave TermChanged TermResponse User UserGettingBored VimEnter VimLeave VimLeavePre VimResized WinEnter WinLeave

" Highlight commonly used Groupnames
sy keyword vimGroup contained Comment Constant String Character Number Boolean Float Identifier Function Statement Conditional Repeat Label Operator Keyword Exception PreProc Include Define Macro PreCondit Type StorageClass Structure Typedef Special SpecialChar Tag Delimiter SpecialComment Debug Underlined Ignore Error Todo None

" Default highlighting groups
sy keyword vimHLGroup contained Cursor CursorColumn CursorIM CursorLine DiffAdd DiffChange DiffDelete DiffText Directory ErrorMsg FoldColumn Folded IncSearch LineNr MatchParen Menu ModeMsg MoreMsg NonText Normal Pmenu PmenuSbar PmenuSel PmenuThumb Question Scrollbar Search SignColumn SpecialKey SpellBad SpellCap SpellLocal SpellRare StatusLine StatusLineNC TabLine TabLineFill TabLineSel Title Tooltip VertSplit Visual VisualNOS WarningMsg WildMenu
sy match vimHLGroup contained "Conceal"
sy case match

" Function Names
sy keyword vimFuncName contained abs argc atan bufexists bufname byte2line ceil cindent complete confirm count deepcopy diff_filler escape executable expr8 filereadable finddir floor foldclosed foldtext function getbufline getcharmod getcmdtype getfperm getftype getmatches getqflist gettabwinvar getwinposy glob has haslocaldir histadd histget hlexists hostname indent input inputlist inputsave insert islocked join len libcallnr line2byte localtime map mapcheck matchadd matchdelete matchlist max mkdir nextnonblank pathshorten prevnonblank pumvisible readfile reltimestr remote_foreground remote_read remove repeat reverse search searchpair searchpos serverlist setcmdpos setloclist setpos setreg setwinvar simplify sort spellbadword split str2float strftime string strpart strtrans substitute synIDattr synstack tabpagebuflist tabpagewinnr taglist tolower tr type virtcol winbufnr winheight winnr winrestview winwidth
sy keyword vimFuncName contained add argidx browse buflisted bufnr byteidx changenr clearmatches complete_add copy cscope_connection delete diff_hlID eval exists extend filewritable findfile fnameescape foldclosedend foldtextresult garbagecollect getbufvar getcmdline getcwd getfsize getline getpid getreg getwinposx getwinvar globpath has_key hasmapto histdel histnr hlID iconv index inputdialog inputrestore inputsecret isdirectory items keys libcall line lispindent log10 maparg match matcharg matchend matchstr min mode nr2char pow printf range reltime remote_expr remote_peek remote_send rename resolve round searchdecl searchpairpos server2client setbufvar setline setmatches setqflist settabwinvar shellescape sin soundfold spellsuggest sqrt str2nr stridx strlen strridx submatch synID synIDtrans system tabpagenr tagfiles tempname toupper trunc values visualmode wincol winline winrestcmd winsaveview writefile
sy keyword vimFuncName contained append argv browsedir bufloaded bufwinnr call char2nr col complete_check cos cursor did_filetype empty eventhandler expand feedkeys filter float2nr fnamemodify foldlevel foreground get getchar getcmdpos getfontname getftime getloclist getpos getregtype

"--- syntax above generated by mkvimvim ---
" Special Vim Highlighting (not automatic)

" Numbers
sy match vimNumber "\<\d\+\([lL]\|\.\d\+\)\="
sy match vimNumber "-\d\+\([lL]\|\.\d\+\)\="
sy match vimNumber "\<0[xX]\x\+"
sy match vimNumber "#\x\{6}"

" All vimCommands are contained by vimIsCommands.
sy match vimCmdSep "[:|]\+" skipwhite nextgroup=vimAddress,vimAutoCmd,vimCommand,vimExtCmd,vimFilter,vimLet,vimMap,vimMark,vimSet,vimSyntax,vimUserCmd
sy match vimIsCommand "\<\h\w*\>" contains=vimCommand
sy match vimVar "\<[bwglsav]:\K\k*\>"
sy match vimVar contained "\<\K\k*\>"
sy match vimFBVar contained "\<[bwglsav]:\K\k*\>"
sy keyword vimCommand contained in

" :insert, :change, and :append
sy region vimInsert matchgroup=vimCommand start="^[: \t]*\(\d\+\(,\d\+\)\=\)\=\(a\%[ppend]\|c\%[hange]\|i\%[nsert]\)$" end="^\.$"

" :loadkeymap
sy region vimLoadKeymap matchgroup=vimCommand start="^[: \t]*loadk\%[eymap]\>" end="\%$" contains=vimLoadKeymapItemLHS,vimLineComment
sy match vimLoadKeymapItemLHS "\%(^[ \t]*\)\@=\S\+" skipwhite nextgroup=vimLoadKeymapItemRHS contained
sy match vimLoadKeymapItemRHS "\S\+" skipwhite nextgroup=vimLoadKeymapItemComment contained
sy match vimLoadKeymapItemComment ".*$" contained

" :behave
sy match vimBehave "\<be\%[have]\>" skipwhite nextgroup=vimBehaveModel,vimBehaveError
sy keyword vimBehaveModel contained mswin xterm
sy match vimBehaveError contained "[^ ]\+"

" Filetypes
sy match vimFiletype "\<filet\%[ype]\(\s\+\I\i*\)*" skipwhite contains=vimFTCmd,vimFTOption,vimFTError
sy match vimFTError contained "\I\i*"
sy keyword vimFTCmd contained filet[ype]
sy keyword vimFTOption contained detect indent off on plugin

" Augroup : vimAugroupError removed because long augroups caused sync'ing problems.
" Trade-off: Increasing synclines with slower editing vs augroup END error checking.
sy cluster vimAugroupList contains=vimIsCommand,vimFuncName,vimFunction,vimFunctionError,vimLineComment,vimSpecFile,vimOper,vimNumber,vimOperParen,vimComment,vimString,vimSubst,vimMark,vimRegister,vimAddress,vimFilter,vimCmplxRepeat,vimComment,vimLet,vimSet,vimAutoCmd,vimRegion,vimSynLine,vimNotation,vimCtrlChar,vimFuncVar,vimContinue
sy region vimAugroup start="\<aug\%[roup]\>\s\+\K\k*" end="\<aug\%[roup]\>\s\+[eE][nN][dD]\>" contains=vimAugroupKey,vimAutoCmd,@vimAugroupList keepend
sy match vimAugroup "aug\%[roup]!" contains=vimAugroupKey
sy match vimAugroupError "\<aug\%[roup]\>\s\+[eE][nN][dD]\>"
sy keyword vimAugroupKey contained aug[roup]

" Operators:
sy cluster vimOperGroup contains=vimFunc,vimFuncVar,vimOper,vimOperParen,vimNumber,vimString,vimRegister,vimContinue
sy match vimOper contained "\(==\|!=\|>=\|<=\|=\~\|!\~\|>\|<\|=\)[?#]\{0,2}" skipwhite nextgroup=vimString,vimSpecFile
sy match vimOper contained "||\|&&\|[-+.]" skipwhite nextgroup=vimString,vimSpecFile
sy region vimOperParen oneline matchgroup=vimParenSep start="(" end=")" contains=@vimOperGroup
sy region vimOperParen oneline matchgroup=vimSep start="{" end="}" contains=@vimOperGroup nextgroup=vimVar,vimFuncVar
sy match vimOperError ")"

" Functions : Tag is provided for those who wish to highlight tagged functions
sy cluster vimFuncList contains=vimCommand,vimFunctionError,vimFuncKey,Tag,vimFuncSID
sy cluster vimFuncBodyList contains=vimAbb,vimAddress,vimAugroupKey,vimAutoCmd,vimCmplxRepeat,vimComment,vimComment,vimContinue,vimCtrlChar,vimEcho,vimEchoHL,vimExecute,vimIf,vimIsCommand,vimFBVar,vimFunc,vimFunction,vimFuncVar,vimHighlight,vimIsCommand,vimLet,vimLineComment,vimMap,vimMark,vimNorm,vimNotation,vimNotFunc,vimNumber,vimOper,vimOperParen,vimRegion,vimRegister,vimSet,vimSpecFile,vimString,vimSubst,vimSynLine,vimUserCommand
sy match vimFunction "\<fu\%[nction]!\=\s\+\%(<[sS][iI][dD]>\|[sSgGbBwWtTlL]:\)\=\%(\i\|[#.]\|{.\{-1,}}\)*\ze\s*(" contains=@vimFuncList nextgroup=vimFuncBody

sy region vimFuncBody contained start="\ze(" matchgroup=vimCommand end="\<\(endf\>\|endfu\%[nction]\>\)" contains=@vimFuncBodyList
sy match vimFuncVar contained "a:\(\K\k*\|\d\+\)"
sy match vimFuncSID contained "\c<sid>\|\<s:"
sy keyword vimFuncKey contained fu[nction]
sy match vimFuncBlank contained "\s\+"

sy keyword vimPattern contained start skip end

" Special Filenames, Modifiers, Extension Removal:
sy match vimSpecFile contained "<c\(word\|WORD\)>" nextgroup=vimSpecFileMod,vimSubst
sy match vimSpecFile contained "<\([acs]file\|amatch\|abuf\)>" nextgroup=vimSpecFileMod,vimSubst
sy match vimSpecFile contained "\s%[ \t:]"ms=s+1,me=e-1 nextgroup=vimSpecFileMod,vimSubst
sy match vimSpecFile contained "\s%$"ms=s+1 nextgroup=vimSpecFileMod,vimSubst
sy match vimSpecFile contained "\s%<"ms=s+1,me=e-1 nextgroup=vimSpecFileMod,vimSubst
sy match vimSpecFile contained "#\d\+\|[#%]<\>" nextgroup=vimSpecFileMod,vimSubst
sy match vimSpecFileMod contained "\(:[phtre]\)\+"

" User-Specified Commands:
sy cluster vimUserCmdList contains=vimAddress,vimSyntax,vimHighlight,vimAutoCmd,vimCmplxRepeat,vimComment,vimCtrlChar,vimEscapeBrace,vimFilter,vimFunc,vimFuncName,vimFunction,vimFunctionError,vimIsCommand,vimMark,vimNotation,vimNumber,vimOper,vimRegion,vimRegister,vimLet,vimSet,vimSetEqual,vimSetString,vimSpecFile,vimString,vimSubst,vimSubstRep,vimSubstRange,vimSynLine
sy keyword vimUserCommand contained com[mand]
sy match vimUserCmd "\<com\%[mand]!\=\>.*$" contains=vimUserAttrb,vimUserCommand,@vimUserCmdList
sy match vimUserAttrb contained "-n\%[args]=[01*?+]" contains=vimUserAttrbKey,vimOper
sy match vimUserAttrb contained "-com\%[plete]=" contains=vimUserAttrbKey,vimOper nextgroup=vimUserAttrbCmplt,vimUserCmdError
sy match vimUserAttrb contained "-ra\%[nge]\(=%\|=\d\+\)\=" contains=vimNumber,vimOper,vimUserAttrbKey
sy match vimUserAttrb contained "-cou\%[nt]=\d\+" contains=vimNumber,vimOper,vimUserAttrbKey
sy match vimUserAttrb contained "-bang\=\>" contains=vimOper,vimUserAttrbKey
sy match vimUserAttrb contained "-bar\>" contains=vimOper,vimUserAttrbKey
sy match vimUserAttrb contained "-re\%[gister]\>" contains=vimOper,vimUserAttrbKey
sy match vimUserCmdError contained "\S\+\>"
sy case ignore
sy keyword vimUserAttrbKey contained bar ban[g] cou[nt] ra[nge] com[plete] n[args] re[gister]
sy keyword vimUserAttrbCmplt contained augroup buffer command dir environment event expression file function help highlight mapping menu option shellcmd something tag tag_listfiles var
sy keyword vimUserAttrbCmplt contained custom customlist nextgroup=vimUserAttrbCmpltFunc,vimUserCmdError
sy match vimUserAttrbCmpltFunc contained ",\%([sS]:\|<[sS][iI][dD]>\)\=\%(\h\w*\%(#\u\w*\)\+\|\u\w*\)"hs=s+1 nextgroup=vimUserCmdError

sy case match
sy match vimUserAttrbCmplt contained "custom,\u\w*"

" Lower Priority Comments: after some vim commands...
sy match vimComment excludenl +\s"[^\-:.%#=*].*$+lc=1 contains=@vimCommentGroup,vimCommentString
sy match vimComment +\<endif\s\+".*$+lc=5 contains=@vimCommentGroup,vimCommentString
sy match vimComment +\<else\s\+".*$+lc=4 contains=@vimCommentGroup,vimCommentString
sy region vimCommentString contained oneline start='\S\s\+"'ms=e end='"'

" Environment Variables:
sy match vimEnvvar "\$\I\i*"
sy match vimEnvvar "\${\I\i*}"

" In-String Specials:
" Try to catch strings, if nothing else matches (therefore it must precede the others!)
" vimEscapeBrace handles ["] []"] (ie. "s don't terminate string inside [])
sy region vimEscapeBrace oneline contained transparent start="[^\\]\(\\\\\)*\[\zs\^\=\]\=" skip="\\\\\|\\\]" end="]"me=e-1
sy match vimPatSepErr contained "\\)"
sy match vimPatSep contained "\\|"
sy region vimPatSepZone oneline contained matchgroup=vimPatSepZ start="\\%\=\ze(" skip="\\\\" end="\\)\|[^\]['"]" contains=@vimStringGroup
sy region vimPatRegion contained transparent matchgroup=vimPatSepR start="\\[z%]\=(" end="\\)" contains=@vimSubstList oneline
sy match vimNotPatSep contained "\\\\"
sy cluster vimStringGroup contains=vimEscapeBrace,vimPatSep,vimNotPatSep,vimPatSepErr,vimPatSepZone,@Spell
sy region vimString oneline keepend matchgroup=vimStringDelimiter start=+[^:a-zA-Z>!\\@]"+lc=1 skip=+\\\\\|\\"+ end=+"+ contains=@vimStringGroup
sy region vimString oneline keepend matchgroup=vimStringDelimiter start=+[^:a-zA-Z>!\\@]'+lc=1 end=+'+
sy region vimString oneline matchgroup=vimStringDelimiter start=+=!+lc=1 skip=+\\\\\|\\!+ end=+!+ contains=@vimStringGroup
sy region vimString oneline matchgroup=vimStringDelimiter start="=+"lc=1 skip="\\\\\|\\+" end="+" contains=@vimStringGroup
sy region vimString oneline matchgroup=vimStringDelimiter start="\s/\s*\A"lc=1 skip="\\\\\|\\+" end="/" contains=@vimStringGroup
sy match vimString contained +"[^"]*\\$+ skipnl nextgroup=vimStringCont
sy match vimStringCont contained +\(\\\\\|.\)\{-}[^\\]"+

" Substitutions:
sy cluster vimSubstList contains=vimPatSep,vimPatRegion,vimPatSepErr,vimSubstTwoBS,vimSubstRange,vimNotation
sy cluster vimSubstRepList contains=vimSubstSubstr,vimSubstTwoBS,vimNotation
sy cluster vimSubstList add=vimCollection
sy match vimSubst "\(:\+\s*\|^\s*\||\s*\)\<s\%[ubstitute][:[:alpha:]]\@!" nextgroup=vimSubstPat
sy match vimSubst "s\%[ubstitute][:#[:alpha:]]\@!" nextgroup=vimSubstPat contained
sy match vimSubst "/\zss\%[ubstitute]\ze/" nextgroup=vimSubstPat
sy match vimSubst1 contained "s\%[ubstitute]\>" nextgroup=vimSubstPat
sy region vimSubstPat contained matchgroup=vimSubstDelim start="\z([^a-zA-Z( \t[\]&]\)"rs=s+1 skip="\\\\\|\\\z1" end="\z1"re=e-1,me=e-1 contains=@vimSubstList nextgroup=vimSubstRep4 oneline
sy region vimSubstRep4 contained matchgroup=vimSubstDelim start="\z(.\)" skip="\\\\\|\\\z1" end="\z1" matchgroup=vimNotation end="<[cC][rR]>" contains=@vimSubstRepList nextgroup=vimSubstFlagErr oneline
sy region vimCollection contained transparent start="\\\@<!\[" skip="\\\[" end="\]" contains=vimCollClass
sy match vimCollClassErr contained "\[:.\{-\}:\]"
sy match vimCollClass contained transparent "\[:\(alnum\|alpha\|blank\|cntrl\|digit\|graph\|lower\|print\|punct\|space\|upper\|xdigit\|return\|tab\|escape\|backspace\):\]"
sy match vimSubstSubstr contained "\\z\=\d"
sy match vimSubstTwoBS contained "\\\\"
sy match vimSubstFlagErr contained "[^< \t\r|]\+" contains=vimSubstFlags
sy match vimSubstFlags contained "[&cegiIpr]\+"

" 'String':
sy match vimString "[^(,]'[^']\{-}\zs'"

" Marks, Registers, Addresses, Filters:
sy match vimMark "'[a-zA-Z0-9]\ze[-+,!]" nextgroup=vimOper,vimMarkNumber,vimSubst
sy match vimMark "'[<>]\ze[-+,!]" nextgroup=vimOper,vimMarkNumber,vimSubst
sy match vimMark ",\zs'[<>]\ze" nextgroup=vimOper,vimMarkNumber,vimSubst
sy match vimMark "[!,:]\zs'[a-zA-Z0-9]" nextgroup=vimOper,vimMarkNumber,vimSubst
sy match vimMark "\<norm\%[al]\s\zs'[a-zA-Z0-9]" nextgroup=vimOper,vimMarkNumber,vimSubst
sy match vimMarkNumber "[-+]\d\+" nextgroup=vimSubst contained contains=vimOper
sy match vimPlainMark contained "'[a-zA-Z0-9]"

sy match vimRegister '[^,;[{]\zs"[a-zA-Z0-9.%#:_\-/]\ze[^a-zA-Z_":]'
sy match vimRegister '\<norm\s\+\zs"[a-zA-Z0-9]'
sy match vimRegister '\<normal\s\+\zs"[a-zA-Z0-9]'
sy match vimRegister '@"'
sy match vimPlainRegister contained '"[a-zA-Z0-9\-:.%#*+=]'

sy match vimAddress ",\zs[.$]" skipwhite nextgroup=vimSubst1
sy match vimAddress "%\ze\a" skipwhite nextgroup=vimString,vimSubst1

sy match vimFilter contained "^!.\{-}\(|\|$\)" contains=vimSpecFile
sy match vimFilter contained "\A!.\{-}\(|\|$\)"ms=s+1 contains=vimSpecFile

" Complex repeats (:h complex-repeat)
sy match vimCmplxRepeat '[^a-zA-Z_/\\()]q[0-9a-zA-Z"]'lc=1
sy match vimCmplxRepeat '@[0-9a-z".=@:]\ze\($\|[^a-zA-Z]\)'

" Set command and associated set-options (vimOptions) with comment
sy region vimSet matchgroup=vimCommand start="\<\%(setl\%[ocal]\|setg\%[lobal]\|se\%[t]\)\>" skip="\%(\\\\\)*\\." matchgroup=NONE end="$" matchgroup=vimNotation end="<[cC][rR]>" keepend oneline contains=vimSetEqual,vimOption,vimErrSetting,vimComment,vimSetString,vimSetMod
sy region vimSetEqual contained matchgroup=Delimiter start="[=:]\|[-+^]=" skip="\\\\\|\\\s" end="[| \t]\|$"me=e-1 contains=vimCtrlChar,vimSetSep,vimNotation oneline transparent
sy region vimSetString contained start=+="+hs=s+1 skip=+\\\\\|\\"+ end=+"+ contains=vimCtrlChar
sy match vimSetSep contained "[,:]"
sy match vimSetMod contained "&vim\=\|[!&?<]\|all&"

" Let
"sy keyword vimLet let unl[et] skipwhite nextgroup=vimVar,vimFuncVar
sy keyword vimLet let skipwhite nextgroup=vimLetLHS
sy region vimLetLHS contained matchgroup=vimLetAssignmentOper start="" end="[\.+\-]\?="

" Abbreviations
sy keyword vimAbb ab[breviate] ca[bbrev] inorea[bbrev] cnorea[bbrev] norea[bbrev] ia[bbrev] skipwhite nextgroup=vimMapMod,vimMapLhs

" Autocmd
sy match vimAutoEventList contained "\(!\s\+\)\=\(\a\+,\)*\a\+" contains=vimAutoEvent nextgroup=vimAutoCmdSpace
sy match vimAutoCmdSpace contained "\s\+" nextgroup=vimAutoCmdSfxList
sy match vimAutoCmdSfxList contained "\S*"
sy keyword vimAutoCmd au[tocmd] do[autocmd] doautoa[ll] skipwhite nextgroup=vimAutoEventList

" Echo and Execute -- prefer strings!
sy region vimEcho oneline excludenl matchgroup=vimCommand start="\<ec\%[ho]\>" skip="\(\\\\\)*\\|" end="$\||" contains=vimFunc,vimFuncVar,vimString,vimVar
sy region vimExecute oneline excludenl matchgroup=vimCommand start="\<exe\%[cute]\>" skip="\(\\\\\)*\\|" end="$\||\|<[cC][rR]>" contains=vimFuncVar,vimIsCommand,vimOper,vimNotation,vimOperParen,vimString,vimVar
sy match vimEchoHL contained "echohl\=" skipwhite nextgroup=vimGroup,vimHLGroup,vimEchoHLNone
sy case ignore
sy keyword vimEchoHLNone contained none
sy case match

" Maps
sy match vimMap "\<map\>!\=\ze\s*[^(]" skipwhite nextgroup=vimMapMod,vimMapLhs
sy keyword vimMap cm[ap] cno[remap] im[ap] ino[remap] lm[ap] ln[oremap] nm[ap] nn[oremap] no[remap] om[ap] ono[remap] smap snor[emap] vm[ap] vn[oremap] xm[ap] xn[oremap] skipwhite nextgroup=vimMapBang,vimMapMod,vimMapLhs
sy keyword vimMap mapc[lear]
sy keyword vimUnmap cu[nmap] iu[nmap] lu[nmap] nun[map] ou[nmap] sunm[ap] unm[ap] unm[ap] vu[nmap] xu[nmap] skipwhite nextgroup=vimMapBang,vimMapMod,vimMapLhs
sy match vimMapLhs contained "\S\+" contains=vimNotation,vimCtrlChar skipwhite nextgroup=vimMapRhs
sy match vimMapBang contained "!" skipwhite nextgroup=vimMapMod,vimMapLhs
sy match vimMapMod contained "\c<\(buffer\|expr\|\(local\)\=leader\|plug\|script\|sid\|unique\|silent\)\+>" contains=vimMapModKey,vimMapModErr skipwhite nextgroup=vimMapMod,vimMapLhs
sy match vimMapRhs contained ".*" contains=vimNotation,vimCtrlChar skipnl nextgroup=vimMapRhsExtend
sy match vimMapRhsExtend contained "^\s*\\.*$" contains=vimContinue
sy case ignore
sy keyword vimMapModKey contained buffer expr leader localleader plug script sid silent unique
sy case match

" Menus
sy cluster vimMenuList contains=vimMenuBang,vimMenuPriority,vimMenuName,vimMenuMod
sy keyword vimCommand am[enu] an[oremenu] aun[menu] cme[nu] cnoreme[nu] cunme[nu] ime[nu] inoreme[nu] iunme[nu] me[nu] nme[nu] nnoreme[nu] noreme[nu] nunme[nu] ome[nu] onoreme[nu] ounme[nu] unme[nu] vme[nu] vnoreme[nu] vunme[nu] skipwhite nextgroup=@vimMenuList
sy match vimMenuName "[^ \t\\<]\+" contained nextgroup=vimMenuNameMore,vimMenuMap
sy match vimMenuPriority "\d\+\(\.\d\+\)*" contained skipwhite nextgroup=vimMenuName
sy match vimMenuNameMore "\c\\\s\|<tab>\|\\\." contained nextgroup=vimMenuName,vimMenuNameMore contains=vimNotation
sy match vimMenuMod contained "\c<\(script\|silent\)\+>" skipwhite contains=vimMapModKey,vimMapModErr nextgroup=@vimMenuList
sy match vimMenuMap "\s" contained skipwhite nextgroup=vimMenuRhs
sy match vimMenuRhs ".*$" contained contains=vimString,vimComment,vimIsCommand
sy match vimMenuBang "!" contained skipwhite nextgroup=@vimMenuList

" Angle-Bracket Notation (tnx to Michael Geddes)
sy case ignore
sy match vimNotation "\(\\\|<lt>\)\=<\([scamd]-\)\{0,4}x\=\(f\d\{1,2}\|[^ \t:]\|cr\|lf\|linefeed\|return\|k\=del\%[ete]\|bs\|backspace\|tab\|esc\|right\|left\|help\|undo\|insert\|ins\|k\=home\|k\=end\|kplus\|kminus\|kdivide\|kmultiply\|kenter\|space\|k\=\(page\)\=\(\|down\|up\)\)>" contains=vimBracket
sy match vimNotation "\(\\\|<lt>\)\=<\([scam2-4]-\)\{0,4}\(right\|left\|middle\)\(mouse\)\=\(drag\|release\)\=>" contains=vimBracket
sy match vimNotation "\(\\\|<lt>\)\=<\(bslash\|plug\|sid\|space\|bar\|nop\|nul\|lt\)>" contains=vimBracket
sy match vimNotation '\(\\\|<lt>\)\=<C-R>[0-9a-z"%#:.\-=]'he=e-1 contains=vimBracket
sy match vimNotation '\(\\\|<lt>\)\=<\%(q-\)\=\(line[12]\|count\|bang\|reg\|args\|f-args\|lt\)>' contains=vimBracket
sy match vimNotation "\(\\\|<lt>\)\=<\([cas]file\|abuf\|amatch\|cword\|cWORD\|client\)>" contains=vimBracket
sy match vimBracket contained "[\\<>]"
sy case match

" User Function Highlighting
" (following Gautam Iyer's suggestion)
sy match vimFunc "\%(\%([sSgGbBwWtTlL]:\|<[sS][iI][dD]>\)\=\%([a-zA-Z0-9_.]\+\.\)*\I[a-zA-Z0-9_.]*\)\ze\s*(" contains=vimFuncName,vimUserFunc,vimExecute
sy match vimUserFunc contained "\%(\%([sSgGbBwWtTlL]:\|<[sS][iI][dD]>\)\=\%([a-zA-Z0-9_.]\+\.\)*\I[a-zA-Z0-9_.]*\)\|\<\u[a-zA-Z0-9.]*\>\|\<if\>" contains=vimNotation
sy match vimNotFunc "\<if\>\|\<el\%[seif]\>\|\<return\>\|\<while\>"

" Errors And Warnings:
sy match vimFunctionError "\s\zs[a-z0-9]\i\{-}\ze\s*(" contained contains=vimFuncKey,vimFuncBlank
" sy match vimFunctionError "\s\zs\%(<[sS][iI][dD]>\|[sSgGbBwWtTlL]:\)[0-9]\i\{-}\ze\s*(" contained contains=vimFuncKey,vimFuncBlank
sy match vimElseIfErr "\<else\s\+if\>"
sy match vimBufnrWarn /\<bufnr\s*(\s*["']\.['"]\s*)/

" Norm
sy match vimNorm "\<norm\%[al]!\=" skipwhite nextgroup=vimNormCmds
sy match vimNormCmds contained ".*$"

" Syntax
sy match vimSynKeyWord contained "\w\+\(\[\w\+\]\)\?" contains=vimSynKeyWordBrackets
sy match vimGroupList contained "\(\i\|[@,]\)\+" contains=vimGroupSpecial,vimPatSep,vimGroupName,vimClusterRef,vimGroupListSeparator
sy match vimGroupListSeparator contained ","
sy match vimGroupName contained "\<\I\i*\>"
sy match vimClusterRef contained "@\I\i*\>"
sy keyword vimGroupSpecial contained ALL ALLBUT CONTAINED TOP
sy match vimSynError contained "\i\+"
sy match vimSynError contained "\i\+=" nextgroup=vimGroupList
sy match vimSynContains contained "\<contain\(s\|edin\)=" nextgroup=vimGroupList
sy match vimSynKeyContainedin contained "\<containedin=" nextgroup=vimGroupList
sy match vimSynNextgroup contained "nextgroup=" nextgroup=vimGroupList

sy match vimSyntax "\<sy\%[ntax]\>" contains=vimCommand skipwhite nextgroup=vimSynType,vimComment
sy match vimAuSyntax contained "\s+sy\%[ntax]" contains=vimCommand skipwhite nextgroup=vimSynType,vimComment

" Syntax: case
sy keyword vimSynType contained case skipwhite nextgroup=vimSynCase,vimSynCaseError
sy match vimSynCaseError contained "\i\+"
sy keyword vimSynCase contained ignore match

" Syntax: clear
sy keyword vimSynType contained clear skipwhite nextgroup=vimGroupList

" Syntax: cluster
sy keyword vimSynType contained cluster skipwhite nextgroup=vimClusterName
sy region vimClusterName contained matchgroup=vimGroupName start="\k\+" skip="\\\\\|\\|" matchgroup=vimSep end="$\||" contains=vimGroupAdd,vimGroupRem,vimSynContains,vimSynError
sy match vimGroupAdd contained "add=" nextgroup=vimGroupList
sy match vimGroupRem contained "remove=" nextgroup=vimGroupList

" Syntax: include
sy keyword vimSynType contained include skipwhite nextgroup=vimGroupList

" Syntax: keyword
sy cluster vimSynKeyGroup contains=vimSynNextgroup,vimSynKeyOpt,vimSynKeyContainedin,vimSynKeyWord
sy keyword vimSynType contained keyword skipwhite nextgroup=vimSynKeyRegion
sy region vimSynKeyRegion contained oneline keepend matchgroup=vimGroupName start="\k\+" skip="\\\\\|\\|" matchgroup=vimSep end="|\|$" contains=@vimSynKeyGroup
sy match vimSynKeyOpt contained "\<\(conceal\|contained\|transparent\|skipempty\|skipwhite\|skipnl\)\>"
sy match vimSynKeyWordBrackets contained "[\[\]]"

" Syntax: match
sy cluster vimSynMtchGroup contains=vimMtchComment,vimSynContains,vimSynError,vimSynMtchOpt,vimSynNextgroup,vimSynRegPat,vimNotation
sy keyword vimSynType contained match skipwhite nextgroup=vimSynMatchRegion
sy region vimSynMatchRegion contained keepend matchgroup=vimGroupName start="\k\+" matchgroup=vimSep end="|\|$" contains=@vimSynMtchGroup
sy match vimSynMtchOpt contained "\<\(conceal\|transparent\|contained\|excludenl\|skipempty\|skipwhite\|display\|extend\|skipnl\|fold\)\>"
if has('conceal')
  sy match vimSynMtchOpt contained "\<cchar=" nextgroup=VimSynMtchCchar
  sy match vimSynMtchCchar contained "\S"
en

" Syntax: off and on
sy keyword vimSynType contained enable list manual off on reset

" Syntax: region
sy cluster vimSynRegPatGroup contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange,vimSubstSubstr,vimPatRegion,vimPatSepErr,vimNotation,vimWSRegEx
sy cluster vimSynRegGroup contains=vimSynContains,vimSynNextgroup,vimSynRegOpt,vimSynReg,vimSynMtchGrp
sy keyword vimSynType contained region skipwhite nextgroup=vimSynRegion
sy region vimSynRegion contained keepend matchgroup=vimGroupName start="\k\+" skip="\\\\\|\\|" end="|\|$" contains=@vimSynRegGroup
sy match vimSynRegOpt contained "\<\(conceal\(ends\)\=\|transparent\|contained\|excludenl\|skipempty\|skipwhite\|display\|keepend\|oneline\|extend\|skipnl\|fold\)\>"
sy match vimSynReg contained "\(start\|skip\|end\)=" nextgroup=vimSynRegPat
sy match vimSynMtchGrp contained "matchgroup=" nextgroup=vimGroup,vimGroupName,vimHLGroup
sy region vimSynRegPat contained extend matchgroup=vimStringDelimiter start="\z([-`~!@#$%^&*_=+;:'",./?]\)" skip="\\\\\|\\\z1" end="\z1" contains=@vimSynRegPatGroup skipwhite nextgroup=vimSynPatMod,vimSynReg
sy match vimSynPatMod contained "\(hs\|ms\|me\|hs\|he\|rs\|re\)=[se]\([-+]\d\+\)\="
sy match vimSynPatMod contained "\(hs\|ms\|me\|hs\|he\|rs\|re\)=[se]\([-+]\d\+\)\=," nextgroup=vimSynPatMod
sy match vimSynPatMod contained "lc=\d\+"
sy match vimSynPatMod contained "lc=\d\+," nextgroup=vimSynPatMod
sy region vimSynPatRange contained start="\[" skip="\\\\\|\\]" end="]"
sy match vimSynNotPatRange contained "\\\\\|\\\["
sy match vimMtchComment contained '"[^"]\+$'
sy match vimWSRegEx contained "\\s[\*+?]"

" Syntax: sync
sy keyword vimSynType contained sync skipwhite nextgroup=vimSyncC,vimSyncLines,vimSyncMatch,vimSyncError,vimSyncLinebreak,vimSyncLinecont,vimSyncRegion
sy match vimSyncError contained "\i\+"
sy keyword vimSyncC contained ccomment clear fromstart
sy keyword vimSyncMatch contained match skipwhite nextgroup=vimSyncGroupName
sy keyword vimSyncRegion contained region skipwhite nextgroup=vimSynReg
sy match vimSyncLinebreak contained "\<linebreaks=" skipwhite nextgroup=vimNumber
sy keyword vimSyncLinecont contained linecont skipwhite nextgroup=vimSynRegPat
sy match vimSyncLines contained "\(min\|max\)\=lines=" nextgroup=vimNumber
sy match vimSyncGroupName contained "\k\+" skipwhite nextgroup=vimSyncKey
sy match vimSyncKey contained "\<groupthere\|grouphere\>" skipwhite nextgroup=vimSyncGroup
sy match vimSyncGroup contained "\k\+" skipwhite nextgroup=vimSynRegPat,vimSyncNone
sy keyword vimSyncNone contained NONE

" Additional IsCommand, here by reasons of precedence
sy match vimIsCommand "<Bar>\s*\a\+" transparent contains=vimCommand,vimNotation

" Highlighting
sy cluster vimHighlightCluster contains=vimHiLink,vimHiClear,vimHiKeyList,vimComment
sy match vimHighlight "\<hi\%[ghlight]\>" skipwhite nextgroup=vimHiBang,@vimHighlightCluster
sy match vimNGNHighlight /\<Hi\>/ skipwhite nextgroup=vimNGNHighlightGroup
sy match vimNGNHighlightGroup /\S\+/ contained contains=vimHiGroup skipwhite nextgroup=vimNGNHighlightFG
sy match vimNGNHighlightFG /\S\+/ contained contains=vimHiGroup skipwhite nextgroup=vimNGNHighlightBG
sy match vimNGNHighlightBG /\S\+/ contained contains=vimHiGroup
sy match vimHiBang contained "!" skipwhite nextgroup=@vimHighlightCluster

sy match vimHiGroup contained "\i\+"
sy case ignore
sy keyword vimHiAttrib contained none bold inverse italic reverse standout underline undercurl
sy keyword vimFgBgAttrib contained none bg background fg foreground
sy case match
sy match vimHiAttribList contained "\i\+" contains=vimHiAttrib
sy match vimHiAttribList contained "\i\+,"he=e-1 contains=vimHiAttrib nextgroup=vimHiAttribList
sy case ignore
sy keyword vimHiCtermColor contained black blue brown cyan darkBlue darkcyan darkgray darkgreen darkgrey darkmagenta darkred darkyellow gray green grey lightblue lightcyan lightgray lightgreen lightgrey lightmagenta lightred magenta red white yellow
for i in range(0, 255)
  exe 'sy keyword vimHiCtermColour'.i.' '.i.' contained containedin=vimHiGroup'
  exe 'hi vimHiCtermColour'.i.(has('gui_running') ? (' guifg=#'.g:c256#values[i]) : (' ctermfg='.i))
endfor

sy case match
sy match vimHiFontname contained "[a-zA-Z\-*]\+"
sy match vimHiGuiFontname contained "'[a-zA-Z\-* ]\+'"
sy match vimHiGuiRgb contained "#\x\{6}"
sy match vimHiCtermError contained "[^0-9]\i*"

" Highlighting: hi group key=arg ...
sy cluster vimHiCluster contains=vimGroup,vimHiGroup,vimHiTerm,vimHiCTerm,vimHiStartStop,vimHiCtermFgBg,vimHiGui,vimHiGuiFont,vimHiGuiFgBg,vimHiKeyError,vimNotation
sy region vimHiKeyList contained oneline start="\i\+" skip="\\\\\|\\|" end="$\||" contains=@vimHiCluster
sy match vimHiKeyError contained "\i\+="he=e-1
sy match vimHiTerm contained "\cterm="he=e-1 nextgroup=vimHiAttribList
sy match vimHiStartStop contained "\c\(start\|stop\)="he=e-1 nextgroup=vimHiTermcap,vimOption
sy match vimHiCTerm contained "\ccterm="he=e-1 nextgroup=vimHiAttribList
sy match vimHiCtermFgBg contained "\ccterm[fb]g="he=e-1 nextgroup=vimNumber,vimHiCtermColor,vimFgBgAttrib,vimHiCtermError
sy match vimHiGui contained "\cgui="he=e-1 nextgroup=vimHiAttribList
sy match vimHiGuiFont contained "\cfont="he=e-1 nextgroup=vimHiFontname
sy match vimHiGuiFgBg contained "\cgui\%([fb]g\|sp\)="he=e-1 nextgroup=vimHiGroup,vimHiGuiFontname,vimHiGuiRgb,vimFgBgAttrib
sy match vimHiTermcap contained "\S\+" contains=vimNotation

" Highlight: clear
sy keyword vimHiClear contained clear nextgroup=vimHiGroup

" Highlight: link
sy region vimHiLink contained oneline matchgroup=vimCommand start="\<\(def\s\+\)\=link\>\|\<def\>" end="$" contains=vimHiGroup,vimGroup,vimHLGroup,vimNotation

" Control Characters
sy match vimCtrlChar "[\u0000-\u0008\u000b\u000f-\u001f]"

" Beginners - Patterns that involve ^
sy match vimLineComment +^[ \t:]*".*$+ contains=@vimCommentGroup,vimCommentString
sy match vimContinue "^\s*\\"
sy region vimString start="^\s*\\\z(['"]\)" skip='\\\\\|\\\z1' end="\z1" oneline keepend contains=@vimStringGroup,vimContinue

" Searches And Globals:
sy match vimSearch '^\s*[/?].*' contains=vimSearchDelim
sy match vimSearchDelim '^\s*\zs[/?]\|[/?]$' contained
sy region vimGlobal matchgroup=Statement start='\<g\%[lobal]!\=/' skip='\\.' end='/'
sy region vimGlobal matchgroup=Statement start='\<v\%[global]!\=/' skip='\\.' end='/'

" Scripts: perl,ruby : Benoit Cerrina
" python,tcl: Johannes Zellner
" [-- python --]
let s:pythonpath = expand("<sfile>:p:h") . "/python.vim"

if !filereadable(s:pythonpath)
  let s:pythonpath = globpath(&rtp, "syntax/python.vim")
en

if has("python") && filereadable(s:pythonpath)
  unl! b:current_syntax
  exe "sy include @vimPythonScript ".s:pythonpath
  sy region vimPythonRegion matchgroup=vimScriptDelim start=+py\%[thon]\s*<<\s*\z(.*\)$+ end=+^\z1$+ contains=@vimPythonScript
  sy region vimPythonRegion matchgroup=vimScriptDelim start=+py\%[thon]\s*<<\s*$+ end=+\.$+ contains=@vimPythonScript
  sy cluster vimFuncBodyList add=vimPythonRegion
el
  sy region vimEmbedError start=+py\%[thon]\s*<<\s*\z(.*\)$+ end=+^\z1$+
  sy region vimEmbedError start=+py\%[thon]\s*<<\s*$+ end=+\.$+
en

unl s:pythonpath

" Synchronize (speed)
sy sync maxlines=60
sy sync linecont "^\s\+\\"
sy sync match vimAugroupSyncA groupthere NONE "\<aug\%[roup]\>\s\+[eE][nN][dD]"

" Highlighting Settings
hi def link vimAbb                  vimCommand
hi def link vimAddress              vimMark
hi def link vimAugroupKey           vimCommand
hi def link vimAuHighlight          vimHighlight
hi def link vimAutoCmdOpt           vimOption
hi def link vimAutoCmd              vimCommand
hi def link vimAutoEvent            Type
hi def link vimAutoSet              vimCommand
hi def link vimBehaveError          vimError
hi def link vimBehaveModel          vimBehave
hi def link vimBehave               vimCommand
hi def link vimBracket              Delimiter
hi def link vimBufnrWarn            vimWarn
hi def link vimClusterRef           vimGroupName
hi def link vimCmplxRepeat          SpecialChar
hi def link vimCollClassErr         vimError
hi def link vimCommand              Statement
hi def link vimComment              Comment
hi def link vimCommentString        vimString
hi def link vimCondHL               vimCommand
hi def link vimContinue             Special
hi def link vimCtrlChar             SpecialChar
hi def link vimEchoHLNone           vimGroup
hi def link vimEchoHL               vimCommand
hi def link vimElseIfErr            Error
hi def link vimElseif               vimCondHL
hi def link vimEmbedError           vimError
hi def link vimEnvvar               PreProc
hi def link vimError                Error
hi def link vimErrSetting           vimError
hi def link vimFgBgAttrib           vimHiAttrib
hi def link vimFold                 Folded
hi def link vimFTCmd                vimCommand
hi def link vimFTError              vimError
hi def link vimFTOption             vimSynType
hi def link vimFuncKey              vimCommand
hi def link vimFuncName             Function
hi def link vimFuncSID              Special
hi def link vimFunctionError        vimError
hi def link vimFuncVar              Identifier
hi def link vimFunc                 vimError
hi def link vimGroupAdd             vimSynOption
hi def link vimGroupListSeparator   Delimiter
hi def link vimGroupRem             vimSynOption
hi def link vimGroupSpecial         Special
hi def link vimGroup                Type
hi def link vimHiAttribList         vimError
hi def link vimHiAttrib             PreProc
hi def link vimHiCtermError         vimError
hi def link vimHiCtermFgBg          vimHiTerm
hi def link vimHiCTerm              vimHiTerm
hi def link vimHighlight            vimCommand
hi def link vimNGNHighlight         vimCommand
hi def link vimHiGroup              vimGroupName
hi def link vimHiGuiFgBg            vimHiTerm
hi def link vimHiGuiFont            vimHiTerm
hi def link vimHiGuiRgb             vimNumber
hi def link vimHiGui                vimHiTerm
hi def link vimHiKeyError           vimError
hi def link vimHiStartStop          vimHiTerm
hi def link vimHiTerm               Type
hi def link vimHLGroup              vimGroup
hi def link vimHLMod                PreProc
hi def link vimInsert               vimString
hi def link vimKeyCodeError         vimError
hi def link vimKeyCode              vimSpecFile
hi def link vimKeyword              Statement
hi def link vimLet                  vimCommand
hi def link vimLetAssignmentOper    vimCommand
hi def link vimLineComment          vimComment
hi def link vimMapBang              vimCommand
hi def link vimMapModErr            vimError
hi def link vimMapModKey            vimFuncSID
hi def link vimMapMod               vimBracket
hi def link vimMap                  vimCommand
hi def link vimMark                 Number
hi def link vimMarkNumber           vimNumber
hi def link vimMenuMod              vimMapMod
hi def link vimMenuNameMore         vimMenuName
hi def link vimMenuName             PreProc
hi def link vimMtchComment          vimComment
hi def link vimNorm                 vimCommand
hi def link vimNotation             Special
hi def link vimNotFunc              vimCommand
hi def link vimNotPatSep            vimString
hi def link vimNumber               Number
hi def link vimOperError            Error
hi def link vimOper                 Operator
hi def link vimOption               PreProc
hi def link vimParenSep             Delimiter
hi def link vimPatSepErr            vimPatSep
hi def link vimPatSepR              vimPatSep
hi def link vimPatSep               SpecialChar
hi def link vimPatSepZone           vimString
hi def link vimPatSepZ              vimPatSep
hi def link vimPattern              Type
hi def link vimPlainMark            vimMark
hi def link vimPlainRegister        vimRegister
hi def link vimRegister             SpecialChar
hi def link vimScriptDelim          Statement
hi def link vimSearchDelim          Statement
hi def link vimSearch               vimString
hi def link vimSep                  Delimiter
hi def link vimSet                  Constant
hi def link vimSetMod               vimOption
hi def link vimSetSep               Delimiter
hi def link vimSetString            vimString
hi def link vimSpecFile             Identifier
hi def link vimSpecFileMod          vimSpecFile
hi def link vimSpecial              Type
hi def link vimStatement            Statement
hi def link vimStringCont           vimString
hi def link vimStringDelimiter      vimString
hi def link vimString               String
hi def link vimSubst1               vimSubst
hi def link vimSubstDelim           Delimiter
hi def link vimSubstFlagErr         vimError
hi def link vimSubstFlags           Special
hi def link vimSubstSubstr          SpecialChar
hi def link vimSubstTwoBS           vimString
hi def link vimSubst                vimCommand
hi def link vimSynCaseError         Error
hi def link vimSynCaseError         vimError
hi def link vimSynCase              Type
hi def link vimSyncC                Type
hi def link vimSyncMatch            Type
hi def link vimSyncError            Error
hi def link vimSyncGroupName        vimGroupName
hi def link vimSyncGroup            vimGroupName
hi def link vimSyncKey              Type
hi def link vimSyncNone             Type
hi def link vimSynContains          vimSynOption
hi def link vimSynError             Error
hi def link vimSynKeyContainedin    vimSynContains
hi def link vimSynKeyOpt            vimSynOption
hi def link vimSynKeyWord           vimString
hi def link vimSynKeyWordBrackets   Special
hi def link vimSynMtchGrp           vimSynOption
hi def link vimSynMtchOpt           vimSynOption
hi def link vimSynNextgroup         vimSynOption
hi def link vimSynNotPatRange       vimSynRegPat
hi def link vimSynOption            Type
hi def link vimSynPatRange          vimString
hi def link vimSynPatMod            Special
hi def link vimSynRegOpt            vimSynOption
hi def link vimSynRegPat            vimString
hi def link vimSynReg               Type
hi def link vimSyntax               vimCommand
hi def link vimSynType              vimSpecial
hi def link vimUnmap                vimMap
hi def link vimUserAttrbCmpltFunc   Special
hi def link vimUserAttrbCmplt       vimSpecial
hi def link vimUserAttrbKey         vimOption
hi def link vimUserAttrb            vimSpecial
hi def link vimUserCmdError         Error
hi def link vimUserCommand          vimCommand
hi def link vimUserFunc             Normal
hi def link vimWarn                 WarningMsg
hi def link vimWSRegEx              Boring
hi def link vimLoadKeymapItemLHS    vimString
hi def link vimLoadKeymapItemRHS    Special
hi def link vimLoadKeymapItemComment vimLineComment

let b:current_syntax = 'vim'
