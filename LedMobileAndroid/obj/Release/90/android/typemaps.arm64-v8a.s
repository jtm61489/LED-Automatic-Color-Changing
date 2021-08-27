	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	13
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	317
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	85
/* java_name_width: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 9d30d120-a12e-4c8c-840e-045133aeff54 */
	.byte	0x20, 0xd1, 0x30, 0x9d, 0x2e, 0xa1, 0x8c, 0x4c, 0x84, 0x0e, 0x04, 0x51, 0x33, 0xae, 0xff, 0x54
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: LedMobileAndroid */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 5b459123-67cc-484d-8df8-7210de5e32a8 */
	.byte	0x23, 0x91, 0x45, 0x5b, 0xcc, 0x67, 0x4d, 0x48, 0x8d, 0xf8, 0x72, 0x10, 0xde, 0x5e, 0x32, 0xa8
	/* entry_count */
	.word	9
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 296d8d24-ffe1-441d-8cd6-5fe80675e5a0 */
	.byte	0x24, 0x8d, 0x6d, 0x29, 0xe1, 0xff, 0x1d, 0x44, 0x8c, 0xd6, 0x5f, 0xe8, 0x06, 0x75, 0xe5, 0xa0
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Essentials */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 0d469737-7cab-4b5d-9e93-be53a4f30d70 */
	.byte	0x37, 0x97, 0x46, 0x0d, 0xab, 0x7c, 0x5d, 0x4b, 0x9e, 0x93, 0xbe, 0x53, 0xa4, 0xf3, 0x0d, 0x70
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Support.DrawerLayout */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b8133439-8cc7-4079-a9a3-fd61f42c670b */
	.byte	0x39, 0x34, 0x13, 0xb8, 0xc7, 0x8c, 0x79, 0x40, 0xa9, 0xa3, 0xfd, 0x61, 0xf4, 0x2c, 0x67, 0x0b
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Loader */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: a27ade40-3bdd-41f7-9bed-e60913a6788c */
	.byte	0x40, 0xde, 0x7a, 0xa2, 0xdd, 0x3b, 0xf7, 0x41, 0x9b, 0xed, 0xe6, 0x09, 0x13, 0xa6, 0x78, 0x8c
	/* entry_count */
	.word	24
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	module5_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: d0906070-920c-4ebd-a390-173ac972b67c */
	.byte	0x70, 0x60, 0x90, 0xd0, 0x0c, 0x92, 0xbd, 0x4e, 0xa3, 0x90, 0x17, 0x3a, 0xc9, 0x72, 0xb6, 0x7c
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 98d1be7e-6152-4473-b375-5801ff6a893e */
	.byte	0x7e, 0xbe, 0xd1, 0x98, 0x52, 0x61, 0x73, 0x44, 0xb3, 0x75, 0x58, 0x01, 0xff, 0x6a, 0x89, 0x3e
	/* entry_count */
	.word	223
	/* duplicate_count */
	.word	40
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	module7_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 3a086b8d-3e19-416c-8c11-6dc2587d73a6 */
	.byte	0x8d, 0x6b, 0x08, 0x3a, 0x19, 0x3e, 0x6c, 0x41, 0x8c, 0x11, 0x6d, 0xc2, 0x58, 0x7d, 0x73, 0xa6
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.CoordinaterLayout */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b19a229d-bc59-47dd-93eb-5c88a4fe3047 */
	.byte	0x9d, 0x22, 0x9a, 0xb1, 0x59, 0xbc, 0xdd, 0x47, 0x93, 0xeb, 0x5c, 0x88, 0xa4, 0xfe, 0x30, 0x47
	/* entry_count */
	.word	30
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 6ab406c2-7f04-4088-b058-2ed5df66c238 */
	.byte	0xc2, 0x06, 0xb4, 0x6a, 0x04, 0x7f, 0x88, 0x40, 0xb0, 0x58, 0x2e, 0xd5, 0xdf, 0x66, 0xc2, 0x38
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	module10_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: e4048fd9-f99b-4e68-ab20-4fc1fb513337 */
	.byte	0xd9, 0x8f, 0x04, 0xe4, 0x9b, 0xf9, 0x68, 0x4e, 0xab, 0x20, 0x4f, 0xc1, 0xfb, 0x51, 0x33, 0x37
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 8a2ce1e5-971d-4e7c-a2b4-4c8d27f45d0d */
	.byte	0xe5, 0xe1, 0x2c, 0x8a, 0x1d, 0x97, 0x7c, 0x4e, 0xa2, 0xb4, 0x4c, 0x8d, 0x27, 0xf4, 0x5d, 0x0d
	/* entry_count */
	.word	10
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module12_managed_to_java
	/* duplicate_map */
	.xword	module12_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Design */
	.xword	.L.map_aname.12
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 936
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554708
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	59

	/* #1 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554710
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	42

	/* #2 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554712
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	37

	/* #3 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554714
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	44

	/* #4 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554717
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	51

	/* #5 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554719
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	65

	/* #6 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554720
	/* java_name */
	.ascii	"android/app/Application"
	.zero	62

	/* #7 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554722
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	35

	/* #8 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554723
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	67

	/* #9 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554727
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	60

	/* #10 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	53

	/* #11 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	47

	/* #12 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	45

	/* #13 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	48

	/* #14 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/LiveData"
	.zero	54

	/* #15 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Observer"
	.zero	54

	/* #16 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStore"
	.zero	48

	/* #17 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"
	.zero	43

	/* #18 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554735
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	51

	/* #19 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554737
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	50

	/* #20 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554730
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	56

	/* #21 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554728
	/* java_name */
	.ascii	"android/content/Context"
	.zero	62

	/* #22 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554732
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	55

	/* #23 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554739
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	54

	/* #24 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554729
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	63

	/* #25 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554740
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	57

	/* #26 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554746
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	52

	/* #27 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554742
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	45

	/* #28 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554744
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	19

	/* #29 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554748
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	55

	/* #30 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554750
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	52

	/* #31 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554753
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	51

	/* #32 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554754
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	52

	/* #33 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554755
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	56

	/* #34 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554570
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	53

	/* #35 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	62

	/* #36 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554696
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	57

	/* #37 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554697
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	62

	/* #38 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554698
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	63

	/* #39 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554699
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	63

	/* #40 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554700
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	58

	/* #41 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554701
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	53

	/* #42 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554702
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	64

	/* #43 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554703
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	63

	/* #44 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554704
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	51

	/* #45 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554706
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	42

	/* #46 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554692
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	70

	/* #47 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554680
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	64

	/* #48 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554681
	/* java_name */
	.ascii	"android/os/Build"
	.zero	69

	/* #49 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554682
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	61

	/* #50 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554684
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	68

	/* #51 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554679
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	67

	/* #52 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554689
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	68

	/* #53 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554690
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	68

	/* #54 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554688
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	64

	/* #55 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554686
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	56

	/* #56 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554678
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	49

	/* #57 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554801
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	51

	/* #58 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/design/snackbar/ContentViewCallback"
	.zero	34

	/* #59 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/design/widget/BaseTransientBottomBar"
	.zero	33

	/* #60 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/design/widget/BaseTransientBottomBar$BaseCallback"
	.zero	20

	/* #61 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/design/widget/BaseTransientBottomBar$Behavior"
	.zero	24

	/* #62 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/design/widget/CoordinatorLayout"
	.zero	38

	/* #63 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/design/widget/CoordinatorLayout$Behavior"
	.zero	29

	/* #64 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/design/widget/CoordinatorLayout$LayoutParams"
	.zero	25

	/* #65 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/design/widget/Snackbar"
	.zero	47

	/* #66 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/design/widget/Snackbar$Callback"
	.zero	38

	/* #67 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/design/widget/Snackbar_SnackbarActionClickImplementor"
	.zero	16

	/* #68 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"android/support/design/widget/SwipeDismissBehavior"
	.zero	35

	/* #69 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"android/support/design/widget/SwipeDismissBehavior$OnDismissListener"
	.zero	17

	/* #70 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	32

	/* #71 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	48

	/* #72 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	13

	/* #73 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	23

	/* #74 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	9

	/* #75 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	54

	/* #76 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	43

	/* #77 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	46

	/* #78 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	47

	/* #79 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	32

	/* #80 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	20

	/* #81 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	20

	/* #82 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	43

	/* #83 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	49

	/* #84 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	33

	/* #85 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	41

	/* #86 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	11

	/* #87 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554477
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	46

	/* #88 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	28

	/* #89 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	45

	/* #90 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	52

	/* #91 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	29

	/* #92 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	29

	/* #93 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	41

	/* #94 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	37

	/* #95 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	47

	/* #96 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	23

	/* #97 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	28

	/* #98 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/support/v4/view/DisplayCutoutCompat"
	.zero	42

	/* #99 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"android/support/v4/view/NestedScrollingParent"
	.zero	40

	/* #100 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"android/support/v4/view/NestedScrollingParent2"
	.zero	39

	/* #101 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	35

	/* #102 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	33

	/* #103 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	27

	/* #104 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v4/view/WindowInsetsCompat"
	.zero	43

	/* #105 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	47

	/* #106 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	32

	/* #107 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	53

	/* #108 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	40

	/* #109 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	28

	/* #110 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	32

	/* #111 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	49

	/* #112 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	41

	/* #113 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	41

	/* #114 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	32

	/* #115 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	24

	/* #116 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	45

	/* #117 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	45

	/* #118 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	45

	/* #119 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	29

	/* #120 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	51

	/* #121 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	42

	/* #122 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	45

	/* #123 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	36

	/* #124 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	44

	/* #125 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	43

	/* #126 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	34

	/* #127 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	48

	/* #128 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	42

	/* #129 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	47

	/* #130 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	34

	/* #131 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	11

	/* #132 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	52

	/* #133 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	28

	/* #134 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	19

	/* #135 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554676
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	60

	/* #136 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554674
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	58

	/* #137 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554677
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	61

	/* #138 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554612
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	62

	/* #139 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554614
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	53

	/* #140 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554617
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	58

	/* #141 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554626
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	61

	/* #142 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554624
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	45

	/* #143 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554619
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	53

	/* #144 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554620
	/* java_name */
	.ascii	"android/view/Display"
	.zero	65

	/* #145 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554621
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	63

	/* #146 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554635
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	62

	/* #147 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554597
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	64

	/* #148 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554599
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	55

	/* #149 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554600
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	58

	/* #150 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554602
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	50

	/* #151 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554604
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	49

	/* #152 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554628
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	68

	/* #153 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554650
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	60

	/* #154 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554634
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	64

	/* #155 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554630
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	41

	/* #156 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554632
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	40

	/* #157 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554605
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	61

	/* #158 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554653
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	61

	/* #159 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554638
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	65

	/* #160 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554589
	/* java_name */
	.ascii	"android/view/View"
	.zero	68

	/* #161 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554591
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	52

	/* #162 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554594
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	40

	/* #163 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554657
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	63

	/* #164 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554658
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	50

	/* #165 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554659
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	44

	/* #166 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554640
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	61

	/* #167 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554642
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	62

	/* #168 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554661
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	52

	/* #169 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	56

	/* #170 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	38

	/* #171 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554609
	/* java_name */
	.ascii	"android/view/Window"
	.zero	66

	/* #172 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554611
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	57

	/* #173 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554645
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	59

	/* #174 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554643
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	46

	/* #175 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554667
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	40

	/* #176 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554673
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	34

	/* #177 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554668
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	39

	/* #178 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554663
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	53

	/* #179 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	50

	/* #180 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554583
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	63

	/* #181 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554572
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	59

	/* #182 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554574
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	36

	/* #183 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554577
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	64

	/* #184 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554585
	/* java_name */
	.ascii	"android/widget/Checkable"
	.zero	61

	/* #185 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554578
	/* java_name */
	.ascii	"android/widget/CompoundButton"
	.zero	56

	/* #186 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554580
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	59

	/* #187 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554581
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	50

	/* #188 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554587
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	56

	/* #189 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554588
	/* java_name */
	.ascii	"android/widget/Switch"
	.zero	64

	/* #190 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554575
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	62

	/* #191 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	31

	/* #192 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc64cc97319e263f28f0/MainActivity"
	.zero	51

	/* #193 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554948
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	68

	/* #194 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554944
	/* java_name */
	.ascii	"java/io/File"
	.zero	73

	/* #195 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554945
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	63

	/* #196 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554946
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	62

	/* #197 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554950
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	68

	/* #198 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554954
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	66

	/* #199 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554951
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	66

	/* #200 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554953
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	55

	/* #201 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554957
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	65

	/* #202 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554959
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	66

	/* #203 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554956
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	65

	/* #204 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554960
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	65

	/* #205 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554961
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	71

	/* #206 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554912
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	65

	/* #207 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554888
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	68

	/* #208 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554889
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	71

	/* #209 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554913
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	63

	/* #210 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554890
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	66

	/* #211 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554891
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	70

	/* #212 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554907
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	57

	/* #213 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554892
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	53

	/* #214 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554916
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	66

	/* #215 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554918
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	65

	/* #216 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554893
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	69

	/* #217 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554908
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	71

	/* #218 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554910
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	70

	/* #219 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554894
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	66

	/* #220 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554895
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	70

	/* #221 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554921
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	51

	/* #222 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554922
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	54

	/* #223 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554923
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	50

	/* #224 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554897
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	68

	/* #225 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	67

	/* #226 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554926
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	63

	/* #227 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554898
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	71

	/* #228 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554927
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	55

	/* #229 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554928
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	55

	/* #230 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554929
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	69

	/* #231 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554899
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	69

	/* #232 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554931
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	47

	/* #233 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554925
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	67

	/* #234 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554900
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	59

	/* #235 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554932
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	58

	/* #236 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554901
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	70

	/* #237 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554902
	/* java_name */
	.ascii	"java/lang/String"
	.zero	69

	/* #238 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554904
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	69

	/* #239 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554906
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	66

	/* #240 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554933
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	46

	/* #241 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554935
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	54

	/* #242 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554937
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	51

	/* #243 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554939
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	49

	/* #244 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554941
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	63

	/* #245 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554943
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	55

	/* #246 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554825
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	60

	/* #247 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554827
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	59

	/* #248 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554829
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	59

	/* #249 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554830
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	59

	/* #250 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554831
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	71

	/* #251 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554832
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	66

	/* #252 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554833
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	63

	/* #253 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554835
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	63

	/* #254 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	61

	/* #255 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554838
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	54

	/* #256 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554840
	/* java_name */
	.ascii	"java/net/URI"
	.zero	73

	/* #257 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554841
	/* java_name */
	.ascii	"java/net/URL"
	.zero	73

	/* #258 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554842
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	63

	/* #259 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	53

	/* #260 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554864
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	70

	/* #261 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554866
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	66

	/* #262 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554871
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	56

	/* #263 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554873
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	60

	/* #264 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554868
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	56

	/* #265 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554875
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	47

	/* #266 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554877
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	47

	/* #267 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554879
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	48

	/* #268 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554881
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	46

	/* #269 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554883
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	48

	/* #270 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554885
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	48

	/* #271 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554886
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	35

	/* #272 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554851
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	63

	/* #273 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554853
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	44

	/* #274 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554855
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	43

	/* #275 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554850
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	62

	/* #276 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554856
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	59

	/* #277 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554857
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	55

	/* #278 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554859
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	48

	/* #279 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554862
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	51

	/* #280 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554861
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	53

	/* #281 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554793
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	66

	/* #282 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554782
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	65

	/* #283 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554845
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	64

	/* #284 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554784
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	68

	/* #285 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554802
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	68

	/* #286 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554847
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	67

	/* #287 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554848
	/* java_name */
	.ascii	"java/util/Random"
	.zero	69

	/* #288 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554547
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	62

	/* #289 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554552
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	55

	/* #290 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554549
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	53

	/* #291 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	61

	/* #292 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554563
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	54

	/* #293 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554564
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	61

	/* #294 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554556
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	61

	/* #295 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554558
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	54

	/* #296 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554565
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	55

	/* #297 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554560
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	59

	/* #298 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554567
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	52

	/* #299 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554562
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	55

	/* #300 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554543
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	54

	/* #301 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554545
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	50

	/* #302 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554984
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	61

	/* #303 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554778
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	46

	/* #304 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	55

	/* #305 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554799
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	54

	/* #306 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554817
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	45

	/* #307 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"mono/android/support/design/widget/SwipeDismissBehavior_OnDismissListenerImplementor"
	.zero	1

	/* #308 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	4

	/* #309 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	7

	/* #310 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	12

	/* #311 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	16

	/* #312 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	12

	/* #313 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	12

	/* #314 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554592
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	36

	/* #315 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554905
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	51

	/* #316 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554539
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	39

	.size	map_java, 29481
/* Java to managed map: END */

