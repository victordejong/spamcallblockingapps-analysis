package p081h.p203i.p401g;

import androidx.media2.exoplayer.external.extractor.p007ts.H262Reader;
import androidx.room.RoomDatabase;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p401g.AbstractC10219a;
import p081h.p203i.p401g.AbstractC10482x;
import p081h.p203i.p401g.C10247f1;
import p081h.p203i.p401g.C10418l;
import p081h.p203i.p401g.C10516z;
/* renamed from: h.i.g.k */
/* loaded from: classes2-dex2jar.jar:h/i/g/k.class */
public final class C10295k {

    /* renamed from: Z */
    public static C10418l.C10431h f23160Z = C10418l.C10431h.m11863a(new String[]{"\n google/protobuf/descriptor.proto\u0012\u000fgoogle.protobuf\"G\n\u0011FileDescriptorSet\u00122\n\u0004file\u0018\u0001 \u0003(\u000b2$.google.protobuf.FileDescriptorProto\"Û\u0003\n\u0013FileDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\t\u0012\u0012\n\ndependency\u0018\u0003 \u0003(\t\u0012\u0019\n\u0011public_dependency\u0018\n \u0003(\u0005\u0012\u0017\n\u000fweak_dependency\u0018\u000b \u0003(\u0005\u00126\n\fmessage_type\u0018\u0004 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0005 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u00128\n\u0007service\u0018\u0006 \u0003(\u000b2'.google.protobuf.ServiceDescriptorProto\u00128\n\textension\u0018\u0007 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u0012-\n\u0007options\u0018\b \u0001(\u000b2\u001c.google.protobuf.FileOptions\u00129\n\u0010source_code_info\u0018\t \u0001(\u000b2\u001f.google.protobuf.SourceCodeInfo\u0012\u000e\n\u0006syntax\u0018\f \u0001(\t\"©\u0005\n\u000fDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00124\n\u0005field\u0018\u0002 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00128\n\textension\u0018\u0006 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00125\n\u000bnested_type\u0018\u0003 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0004 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u0012H\n\u000fextension_range\u0018\u0005 \u0003(\u000b2/.google.protobuf.DescriptorProto.ExtensionRange\u00129\n\noneof_decl\u0018\b \u0003(\u000b2%.google.protobuf.OneofDescriptorProto\u00120\n\u0007options\u0018\u0007 \u0001(\u000b2\u001f.google.protobuf.MessageOptions\u0012F\n\u000ereserved_range\u0018\t \u0003(\u000b2..google.protobuf.DescriptorProto.ReservedRange\u0012\u0015\n\rreserved_name\u0018\n \u0003(\t\u001ae\n\u000eExtensionRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\u00127\n\u0007options\u0018\u0003 \u0001(\u000b2&.google.protobuf.ExtensionRangeOptions\u001a+\n\rReservedRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"g\n\u0015ExtensionRangeOptions\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"¼\u0005\n\u0014FieldDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0003 \u0001(\u0005\u0012:\n\u0005label\u0018\u0004 \u0001(\u000e2+.google.protobuf.FieldDescriptorProto.Label\u00128\n\u0004type\u0018\u0005 \u0001(\u000e2*.google.protobuf.FieldDescriptorProto.Type\u0012\u0011\n\ttype_name\u0018\u0006 \u0001(\t\u0012\u0010\n\bextendee\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_value\u0018\u0007 \u0001(\t\u0012\u0013\n\u000boneof_index\u0018\t \u0001(\u0005\u0012\u0011\n\tjson_name\u0018\n \u0001(\t\u0012.\n\u0007options\u0018\b \u0001(\u000b2\u001d.google.protobuf.FieldOptions\"¶\u0002\n\u0004Type\u0012\u000f\n\u000bTYPE_DOUBLE\u0010\u0001\u0012\u000e\n\nTYPE_FLOAT\u0010\u0002\u0012\u000e\n\nTYPE_INT64\u0010\u0003\u0012\u000f\n\u000bTYPE_UINT64\u0010\u0004\u0012\u000e\n\nTYPE_INT32\u0010\u0005\u0012\u0010\n\fTYPE_FIXED64\u0010\u0006\u0012\u0010\n\fTYPE_FIXED32\u0010\u0007\u0012\r\n\tTYPE_BOOL\u0010\b\u0012\u000f\n\u000bTYPE_STRING\u0010\t\u0012\u000e\n\nTYPE_GROUP\u0010\n\u0012\u0010\n\fTYPE_MESSAGE\u0010\u000b\u0012\u000e\n\nTYPE_BYTES\u0010\f\u0012\u000f\n\u000bTYPE_UINT32\u0010\r\u0012\r\n\tTYPE_ENUM\u0010\u000e\u0012\u0011\n\rTYPE_SFIXED32\u0010\u000f\u0012\u0011\n\rTYPE_SFIXED64\u0010\u0010\u0012\u000f\n\u000bTYPE_SINT32\u0010\u0011\u0012\u000f\n\u000bTYPE_SINT64\u0010\u0012\"C\n\u0005Label\u0012\u0012\n\u000eLABEL_OPTIONAL\u0010\u0001\u0012\u0012\n\u000eLABEL_REQUIRED\u0010\u0002\u0012\u0012\n\u000eLABEL_REPEATED\u0010\u0003\"T\n\u0014OneofDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012.\n\u0007options\u0018\u0002 \u0001(\u000b2\u001d.google.protobuf.OneofOptions\"¤\u0002\n\u0013EnumDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00128\n\u0005value\u0018\u0002 \u0003(\u000b2).google.protobuf.EnumValueDescriptorProto\u0012-\n\u0007options\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.EnumOptions\u0012N\n\u000ereserved_range\u0018\u0004 \u0003(\u000b26.google.protobuf.EnumDescriptorProto.EnumReservedRange\u0012\u0015\n\rreserved_name\u0018\u0005 \u0003(\t\u001a/\n\u0011EnumReservedRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"l\n\u0018EnumValueDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0002 \u0001(\u0005\u00122\n\u0007options\u0018\u0003 \u0001(\u000b2!.google.protobuf.EnumValueOptions\"\u0090\u0001\n\u0016ServiceDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00126\n\u0006method\u0018\u0002 \u0003(\u000b2&.google.protobuf.MethodDescriptorProto\u00120\n\u0007options\u0018\u0003 \u0001(\u000b2\u001f.google.protobuf.ServiceOptions\"Á\u0001\n\u0015MethodDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0012\n\ninput_type\u0018\u0002 \u0001(\t\u0012\u0013\n\u000boutput_type\u0018\u0003 \u0001(\t\u0012/\n\u0007options\u0018\u0004 \u0001(\u000b2\u001e.google.protobuf.MethodOptions\u0012\u001f\n\u0010client_streaming\u0018\u0005 \u0001(\b:\u0005false\u0012\u001f\n\u0010server_streaming\u0018\u0006 \u0001(\b:\u0005false\"¦\u0006\n\u000bFileOptions\u0012\u0014\n\fjava_package\u0018\u0001 \u0001(\t\u0012\u001c\n\u0014java_outer_classname\u0018\b \u0001(\t\u0012\"\n\u0013java_multiple_files\u0018\n \u0001(\b:\u0005false\u0012)\n\u001djava_generate_equals_and_hash\u0018\u0014 \u0001(\bB\u0002\u0018\u0001\u0012%\n\u0016java_string_check_utf8\u0018\u001b \u0001(\b:\u0005false\u0012F\n\foptimize_for\u0018\t \u0001(\u000e2).google.protobuf.FileOptions.OptimizeMode:\u0005SPEED\u0012\u0012\n\ngo_package\u0018\u000b \u0001(\t\u0012\"\n\u0013cc_generic_services\u0018\u0010 \u0001(\b:\u0005false\u0012$\n\u0015java_generic_services\u0018\u0011 \u0001(\b:\u0005false\u0012\"\n\u0013py_generic_services\u0018\u0012 \u0001(\b:\u0005false\u0012#\n\u0014php_generic_services\u0018* \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0017 \u0001(\b:\u0005false\u0012\u001f\n\u0010cc_enable_arenas\u0018\u001f \u0001(\b:\u0005false\u0012\u0019\n\u0011objc_class_prefix\u0018$ \u0001(\t\u0012\u0018\n\u0010csharp_namespace\u0018% \u0001(\t\u0012\u0014\n\fswift_prefix\u0018' \u0001(\t\u0012\u0018\n\u0010php_class_prefix\u0018( \u0001(\t\u0012\u0015\n\rphp_namespace\u0018) \u0001(\t\u0012\u001e\n\u0016php_metadata_namespace\u0018, \u0001(\t\u0012\u0014\n\fruby_package\u0018- \u0001(\t\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\":\n\fOptimizeMode\u0012\t\n\u0005SPEED\u0010\u0001\u0012\r\n\tCODE_SIZE\u0010\u0002\u0012\u0010\n\fLITE_RUNTIME\u0010\u0003*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b&\u0010'\"ò\u0001\n\u000eMessageOptions\u0012&\n\u0017message_set_wire_format\u0018\u0001 \u0001(\b:\u0005false\u0012.\n\u001fno_standard_descriptor_accessor\u0018\u0002 \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012\u0011\n\tmap_entry\u0018\u0007 \u0001(\b\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b\b\u0010\tJ\u0004\b\t\u0010\n\"\u009e\u0003\n\fFieldOptions\u0012:\n\u0005ctype\u0018\u0001 \u0001(\u000e2#.google.protobuf.FieldOptions.CType:\u0006STRING\u0012\u000e\n\u0006packed\u0018\u0002 \u0001(\b\u0012?\n\u0006jstype\u0018\u0006 \u0001(\u000e2$.google.protobuf.FieldOptions.JSType:\tJS_NORMAL\u0012\u0013\n\u0004lazy\u0018\u0005 \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012\u0013\n\u0004weak\u0018\n \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"/\n\u0005CType\u0012\n\n\u0006STRING\u0010��\u0012\b\n\u0004CORD\u0010\u0001\u0012\u0010\n\fSTRING_PIECE\u0010\u0002\"5\n\u0006JSType\u0012\r\n\tJS_NORMAL\u0010��\u0012\r\n\tJS_STRING\u0010\u0001\u0012\r\n\tJS_NUMBER\u0010\u0002*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b\u0004\u0010\u0005\"^\n\fOneofOptions\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u0093\u0001\n\u000bEnumOptions\u0012\u0013\n\u000ballow_alias\u0018\u0002 \u0001(\b\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b\u0005\u0010\u0006\"}\n\u0010EnumValueOptions\u0012\u0019\n\ndeprecated\u0018\u0001 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"{\n\u000eServiceOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00ad\u0002\n\rMethodOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\b:\u0005false\u0012_\n\u0011idempotency_level\u0018\" \u0001(\u000e2/.google.protobuf.MethodOptions.IdempotencyLevel:\u0013IDEMPOTENCY_UNKNOWN\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"P\n\u0010IdempotencyLevel\u0012\u0017\n\u0013IDEMPOTENCY_UNKNOWN\u0010��\u0012\u0013\n\u000fNO_SIDE_EFFECTS\u0010\u0001\u0012\u000e\n\nIDEMPOTENT\u0010\u0002*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u009e\u0002\n\u0013UninterpretedOption\u0012;\n\u0004name\u0018\u0002 \u0003(\u000b2-.google.protobuf.UninterpretedOption.NamePart\u0012\u0018\n\u0010identifier_value\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012positive_int_value\u0018\u0004 \u0001(\u0004\u0012\u001a\n\u0012negative_int_value\u0018\u0005 \u0001(\u0003\u0012\u0014\n\fdouble_value\u0018\u0006 \u0001(\u0001\u0012\u0014\n\fstring_value\u0018\u0007 \u0001(\f\u0012\u0017\n\u000faggregate_value\u0018\b \u0001(\t\u001a3\n\bNamePart\u0012\u0011\n\tname_part\u0018\u0001 \u0002(\t\u0012\u0014\n\fis_extension\u0018\u0002 \u0002(\b\"Õ\u0001\n\u000eSourceCodeInfo\u0012:\n\blocation\u0018\u0001 \u0003(\u000b2(.google.protobuf.SourceCodeInfo.Location\u001a\u0086\u0001\n\bLocation\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0010\n\u0004span\u0018\u0002 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0018\n\u0010leading_comments\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011trailing_comments\u0018\u0004 \u0001(\t\u0012!\n\u0019leading_detached_comments\u0018\u0006 \u0003(\t\"§\u0001\n\u0011GeneratedCodeInfo\u0012A\n\nannotation\u0018\u0001 \u0003(\u000b2-.google.protobuf.GeneratedCodeInfo.Annotation\u001aO\n\nAnnotation\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0013\n\u000bsource_file\u0018\u0002 \u0001(\t\u0012\r\n\u0005begin\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0004 \u0001(\u0005B\u008f\u0001\n\u0013com.google.protobufB\u0010DescriptorProtosH\u0001Z>github.com/golang/protobuf/protoc-gen-go/descriptor;descriptorø\u0001\u0001¢\u0002\u0003GPBª\u0002\u001aGoogle.Protobuf.Reflection"}, new C10418l.C10431h[0]);

    /* renamed from: a */
    public static final C10418l.C10420b f23161a = m12698W().m11861f().get(0);

    /* renamed from: b */
    public static final C10418l.C10420b f23162b = m12698W().m11861f().get(1);

    /* renamed from: c */
    public static final AbstractC10482x.C10491g f23163c = new AbstractC10482x.C10491g(f23162b, new String[]{"Name", "Package", "Dependency", "PublicDependency", "WeakDependency", "MessageType", "EnumType", "Service", "Extension", "Options", "SourceCodeInfo", "Syntax"});

    /* renamed from: d */
    public static final C10418l.C10420b f23164d = m12698W().m11861f().get(2);

    /* renamed from: e */
    public static final AbstractC10482x.C10491g f23165e = new AbstractC10482x.C10491g(f23164d, new String[]{"Name", "Field", "Extension", "NestedType", "EnumType", "ExtensionRange", "OneofDecl", "Options", "ReservedRange", "ReservedName"});

    /* renamed from: f */
    public static final C10418l.C10420b f23166f = f23164d.m11910g().get(0);

    /* renamed from: g */
    public static final AbstractC10482x.C10491g f23167g = new AbstractC10482x.C10491g(f23166f, new String[]{"Start", "End", "Options"});

    /* renamed from: h */
    public static final C10418l.C10420b f23168h = f23164d.m11910g().get(1);

    /* renamed from: i */
    public static final AbstractC10482x.C10491g f23169i = new AbstractC10482x.C10491g(f23168h, new String[]{"Start", "End"});

    /* renamed from: j */
    public static final C10418l.C10420b f23170j = m12698W().m11861f().get(3);

    /* renamed from: k */
    public static final AbstractC10482x.C10491g f23171k = new AbstractC10482x.C10491g(f23170j, new String[]{"UninterpretedOption"});

    /* renamed from: l */
    public static final C10418l.C10420b f23172l = m12698W().m11861f().get(4);

    /* renamed from: m */
    public static final AbstractC10482x.C10491g f23173m = new AbstractC10482x.C10491g(f23172l, new String[]{"Name", "Number", "Label", "Type", "TypeName", "Extendee", "DefaultValue", "OneofIndex", "JsonName", "Options"});

    /* renamed from: n */
    public static final C10418l.C10420b f23174n = m12698W().m11861f().get(5);

    /* renamed from: o */
    public static final AbstractC10482x.C10491g f23175o = new AbstractC10482x.C10491g(f23174n, new String[]{"Name", "Options"});

    /* renamed from: p */
    public static final C10418l.C10420b f23176p = m12698W().m11861f().get(6);

    /* renamed from: q */
    public static final AbstractC10482x.C10491g f23177q = new AbstractC10482x.C10491g(f23176p, new String[]{"Name", "Value", "Options", "ReservedRange", "ReservedName"});

    /* renamed from: r */
    public static final C10418l.C10420b f23178r = f23176p.m11910g().get(0);

    /* renamed from: s */
    public static final AbstractC10482x.C10491g f23179s = new AbstractC10482x.C10491g(f23178r, new String[]{"Start", "End"});

    /* renamed from: t */
    public static final C10418l.C10420b f23180t = m12698W().m11861f().get(7);

    /* renamed from: u */
    public static final AbstractC10482x.C10491g f23181u = new AbstractC10482x.C10491g(f23180t, new String[]{"Name", "Number", "Options"});

    /* renamed from: v */
    public static final C10418l.C10420b f23182v = m12698W().m11861f().get(8);

    /* renamed from: w */
    public static final AbstractC10482x.C10491g f23183w = new AbstractC10482x.C10491g(f23182v, new String[]{"Name", "Method", "Options"});

    /* renamed from: x */
    public static final C10418l.C10420b f23184x = m12698W().m11861f().get(9);

    /* renamed from: y */
    public static final AbstractC10482x.C10491g f23185y = new AbstractC10482x.C10491g(f23184x, new String[]{"Name", "InputType", "OutputType", "Options", "ClientStreaming", "ServerStreaming"});

    /* renamed from: z */
    public static final C10418l.C10420b f23186z = m12698W().m11861f().get(10);

    /* renamed from: A */
    public static final AbstractC10482x.C10491g f23135A = new AbstractC10482x.C10491g(f23186z, new String[]{"JavaPackage", "JavaOuterClassname", "JavaMultipleFiles", "JavaGenerateEqualsAndHash", "JavaStringCheckUtf8", "OptimizeFor", "GoPackage", "CcGenericServices", "JavaGenericServices", "PyGenericServices", "PhpGenericServices", "Deprecated", "CcEnableArenas", "ObjcClassPrefix", "CsharpNamespace", "SwiftPrefix", "PhpClassPrefix", "PhpNamespace", "PhpMetadataNamespace", "RubyPackage", "UninterpretedOption"});

    /* renamed from: B */
    public static final C10418l.C10420b f23136B = m12698W().m11861f().get(11);

    /* renamed from: C */
    public static final AbstractC10482x.C10491g f23137C = new AbstractC10482x.C10491g(f23136B, new String[]{"MessageSetWireFormat", "NoStandardDescriptorAccessor", "Deprecated", "MapEntry", "UninterpretedOption"});

    /* renamed from: D */
    public static final C10418l.C10420b f23138D = m12698W().m11861f().get(12);

    /* renamed from: E */
    public static final AbstractC10482x.C10491g f23139E = new AbstractC10482x.C10491g(f23138D, new String[]{"Ctype", "Packed", "Jstype", "Lazy", "Deprecated", "Weak", "UninterpretedOption"});

    /* renamed from: F */
    public static final C10418l.C10420b f23140F = m12698W().m11861f().get(13);

    /* renamed from: G */
    public static final AbstractC10482x.C10491g f23141G = new AbstractC10482x.C10491g(f23140F, new String[]{"UninterpretedOption"});

    /* renamed from: H */
    public static final C10418l.C10420b f23142H = m12698W().m11861f().get(14);

    /* renamed from: I */
    public static final AbstractC10482x.C10491g f23143I = new AbstractC10482x.C10491g(f23142H, new String[]{"AllowAlias", "Deprecated", "UninterpretedOption"});

    /* renamed from: J */
    public static final C10418l.C10420b f23144J = m12698W().m11861f().get(15);

    /* renamed from: K */
    public static final AbstractC10482x.C10491g f23145K = new AbstractC10482x.C10491g(f23144J, new String[]{"Deprecated", "UninterpretedOption"});

    /* renamed from: L */
    public static final C10418l.C10420b f23146L = m12698W().m11861f().get(16);

    /* renamed from: M */
    public static final AbstractC10482x.C10491g f23147M = new AbstractC10482x.C10491g(f23146L, new String[]{"Deprecated", "UninterpretedOption"});

    /* renamed from: N */
    public static final C10418l.C10420b f23148N = m12698W().m11861f().get(17);

    /* renamed from: O */
    public static final AbstractC10482x.C10491g f23149O = new AbstractC10482x.C10491g(f23148N, new String[]{"Deprecated", "IdempotencyLevel", "UninterpretedOption"});

    /* renamed from: P */
    public static final C10418l.C10420b f23150P = m12698W().m11861f().get(18);

    /* renamed from: Q */
    public static final AbstractC10482x.C10491g f23151Q = new AbstractC10482x.C10491g(f23150P, new String[]{"Name", "IdentifierValue", "PositiveIntValue", "NegativeIntValue", "DoubleValue", "StringValue", "AggregateValue"});

    /* renamed from: R */
    public static final C10418l.C10420b f23152R = f23150P.m11910g().get(0);

    /* renamed from: S */
    public static final AbstractC10482x.C10491g f23153S = new AbstractC10482x.C10491g(f23152R, new String[]{"NamePart", "IsExtension"});

    /* renamed from: T */
    public static final C10418l.C10420b f23154T = m12698W().m11861f().get(19);

    /* renamed from: U */
    public static final AbstractC10482x.C10491g f23155U = new AbstractC10482x.C10491g(f23154T, new String[]{"Location"});

    /* renamed from: V */
    public static final C10418l.C10420b f23156V = f23154T.m11910g().get(0);

    /* renamed from: W */
    public static final AbstractC10482x.C10491g f23157W = new AbstractC10482x.C10491g(f23156V, new String[]{"Path", "Span", "LeadingComments", "TrailingComments", "LeadingDetachedComments"});

    /* renamed from: X */
    public static final C10418l.C10420b f23158X = m12698W().m11861f().get(20);

    /* renamed from: Y */
    public static final C10418l.C10420b f23159Y = f23158X.m11910g().get(0);

    /* renamed from: h.i.g.k$a0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$a0.class */
    public interface AbstractC10297a0 extends AbstractC10482x.AbstractC10490f<C10400z> {
    }

    /* renamed from: h.i.g.k$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$b.class */
    public static final class C10298b extends AbstractC10482x implements AbstractC10312c {

        /* renamed from: q */
        public static final C10298b f23187q = new C10298b();
        @Deprecated

        /* renamed from: r */
        public static final AbstractC10462s0<C10298b> f23188r = new C10299a();

        /* renamed from: e */
        public int f23189e;

        /* renamed from: f */
        public volatile Object f23190f;

        /* renamed from: g */
        public List<C10366n> f23191g;

        /* renamed from: h */
        public List<C10366n> f23192h;

        /* renamed from: i */
        public List<C10298b> f23193i;

        /* renamed from: j */
        public List<C10314d> f23194j;

        /* renamed from: k */
        public List<C10301c> f23195k;

        /* renamed from: l */
        public List<C10309b0> f23196l;

        /* renamed from: m */
        public C10392v f23197m;

        /* renamed from: n */
        public List<C10305e> f23198n;

        /* renamed from: o */
        public AbstractC10243e0 f23199o;

        /* renamed from: p */
        public byte f23200p;

        /* renamed from: h.i.g.k$b$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$a.class */
        public static final class C10299a extends AbstractC10235c<C10298b> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10298b mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10298b(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$b$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$b.class */
        public static final class C10300b extends AbstractC10482x.AbstractC10484b<C10300b> implements AbstractC10312c {

            /* renamed from: e */
            public int f23201e;

            /* renamed from: f */
            public Object f23202f;

            /* renamed from: g */
            public List<C10366n> f23203g;

            /* renamed from: h */
            public C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> f23204h;

            /* renamed from: i */
            public List<C10366n> f23205i;

            /* renamed from: j */
            public C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> f23206j;

            /* renamed from: k */
            public List<C10298b> f23207k;

            /* renamed from: l */
            public C10478w0<C10298b, C10300b, AbstractC10312c> f23208l;

            /* renamed from: m */
            public List<C10314d> f23209m;

            /* renamed from: n */
            public C10478w0<C10314d, C10314d.C10316b, AbstractC10324e> f23210n;

            /* renamed from: o */
            public List<C10301c> f23211o;

            /* renamed from: p */
            public C10478w0<C10301c, C10301c.C10303b, AbstractC10304d> f23212p;

            /* renamed from: q */
            public List<C10309b0> f23213q;

            /* renamed from: r */
            public C10478w0<C10309b0, C10309b0.C10311b, AbstractC10313c0> f23214r;

            /* renamed from: s */
            public C10392v f23215s;

            /* renamed from: t */
            public C10506x0<C10392v, C10392v.C10394b, AbstractC10395w> f23216t;

            /* renamed from: u */
            public List<C10305e> f23217u;

            /* renamed from: v */
            public C10478w0<C10305e, C10305e.C10307b, AbstractC10308f> f23218v;

            /* renamed from: w */
            public AbstractC10243e0 f23219w;

            public C10300b() {
                this.f23202f = "";
                this.f23203g = Collections.emptyList();
                this.f23205i = Collections.emptyList();
                this.f23207k = Collections.emptyList();
                this.f23209m = Collections.emptyList();
                this.f23211o = Collections.emptyList();
                this.f23213q = Collections.emptyList();
                this.f23217u = Collections.emptyList();
                this.f23219w = C10240d0.f23071d;
                m12620C();
            }

            public C10300b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23202f = "";
                this.f23203g = Collections.emptyList();
                this.f23205i = Collections.emptyList();
                this.f23207k = Collections.emptyList();
                this.f23209m = Collections.emptyList();
                this.f23211o = Collections.emptyList();
                this.f23213q = Collections.emptyList();
                this.f23217u = Collections.emptyList();
                this.f23219w = C10240d0.f23071d;
                m12620C();
            }

            /* renamed from: A */
            public final C10506x0<C10392v, C10392v.C10394b, AbstractC10395w> m12622A() {
                if (this.f23216t == null) {
                    this.f23216t = new C10506x0<>(m12601z(), m11661g(), m11659i());
                    this.f23215s = null;
                }
                return this.f23216t;
            }

            /* renamed from: B */
            public final C10478w0<C10305e, C10305e.C10307b, AbstractC10308f> m12621B() {
                if (this.f23218v == null) {
                    this.f23218v = new C10478w0<>(this.f23217u, (this.f23201e & 256) != 0, m11661g(), m11659i());
                    this.f23217u = null;
                }
                return this.f23218v;
            }

            /* renamed from: C */
            public final void m12620C() {
                if (AbstractC10482x.f23816d) {
                    m12604w();
                    m12606u();
                    m12603x();
                    m12607t();
                    m12605v();
                    m12602y();
                    m12622A();
                    m12621B();
                }
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10298b mo11825E() {
                C10298b bVar = new C10298b(this);
                int i = this.f23201e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                bVar.f23190f = this.f23202f;
                C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> w0Var = this.f23204h;
                if (w0Var == null) {
                    if ((this.f23201e & 2) != 0) {
                        this.f23203g = Collections.unmodifiableList(this.f23203g);
                        this.f23201e &= -3;
                    }
                    bVar.f23191g = this.f23203g;
                } else {
                    bVar.f23191g = w0Var.m11704b();
                }
                C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> w0Var2 = this.f23206j;
                if (w0Var2 == null) {
                    if ((this.f23201e & 4) != 0) {
                        this.f23205i = Collections.unmodifiableList(this.f23205i);
                        this.f23201e &= -5;
                    }
                    bVar.f23192h = this.f23205i;
                } else {
                    bVar.f23192h = w0Var2.m11704b();
                }
                C10478w0<C10298b, C10300b, AbstractC10312c> w0Var3 = this.f23208l;
                if (w0Var3 == null) {
                    if ((this.f23201e & 8) != 0) {
                        this.f23207k = Collections.unmodifiableList(this.f23207k);
                        this.f23201e &= -9;
                    }
                    bVar.f23193i = this.f23207k;
                } else {
                    bVar.f23193i = w0Var3.m11704b();
                }
                C10478w0<C10314d, C10314d.C10316b, AbstractC10324e> w0Var4 = this.f23210n;
                if (w0Var4 == null) {
                    if ((this.f23201e & 16) != 0) {
                        this.f23209m = Collections.unmodifiableList(this.f23209m);
                        this.f23201e &= -17;
                    }
                    bVar.f23194j = this.f23209m;
                } else {
                    bVar.f23194j = w0Var4.m11704b();
                }
                C10478w0<C10301c, C10301c.C10303b, AbstractC10304d> w0Var5 = this.f23212p;
                if (w0Var5 == null) {
                    if ((this.f23201e & 32) != 0) {
                        this.f23211o = Collections.unmodifiableList(this.f23211o);
                        this.f23201e &= -33;
                    }
                    bVar.f23195k = this.f23211o;
                } else {
                    bVar.f23195k = w0Var5.m11704b();
                }
                C10478w0<C10309b0, C10309b0.C10311b, AbstractC10313c0> w0Var6 = this.f23214r;
                if (w0Var6 == null) {
                    if ((this.f23201e & 64) != 0) {
                        this.f23213q = Collections.unmodifiableList(this.f23213q);
                        this.f23201e &= -65;
                    }
                    bVar.f23196l = this.f23213q;
                } else {
                    bVar.f23196l = w0Var6.m11704b();
                }
                int i3 = i2;
                if ((i & 128) != 0) {
                    C10506x0<C10392v, C10392v.C10394b, AbstractC10395w> x0Var = this.f23216t;
                    if (x0Var == null) {
                        bVar.f23197m = this.f23215s;
                    } else {
                        bVar.f23197m = x0Var.m11583b();
                    }
                    i3 = i2 | 2;
                }
                C10478w0<C10305e, C10305e.C10307b, AbstractC10308f> w0Var7 = this.f23218v;
                if (w0Var7 == null) {
                    if ((this.f23201e & 256) != 0) {
                        this.f23217u = Collections.unmodifiableList(this.f23217u);
                        this.f23201e &= -257;
                    }
                    bVar.f23198n = this.f23217u;
                } else {
                    bVar.f23198n = w0Var7.m11704b();
                }
                if ((this.f23201e & 512) != 0) {
                    this.f23219w = this.f23219w.mo12887o();
                    this.f23201e &= -513;
                }
                bVar.f23199o = this.f23219w;
                bVar.f23189e = i3;
                m11658j();
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10300b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10298b.C10300b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$b> r0 = p081h.p203i.p401g.C10295k.C10298b.f23188r     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$b r0 = (p081h.p203i.p401g.C10295k.C10298b) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$b$b r0 = r0.m12618a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$b r0 = (p081h.p203i.p401g.C10295k.C10298b) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$b$b r0 = r0.m12618a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10298b.C10300b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$b$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10300b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10298b) {
                    m12618a((C10298b) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10300b m12619a(C10301c cVar) {
                C10478w0<C10301c, C10301c.C10303b, AbstractC10304d> w0Var = this.f23212p;
                if (w0Var != null) {
                    w0Var.m11706a((C10478w0<C10301c, C10301c.C10303b, AbstractC10304d>) cVar);
                } else if (cVar != null) {
                    m12613n();
                    this.f23211o.add(cVar);
                    m11657k();
                } else {
                    throw new NullPointerException();
                }
                return this;
            }

            /* renamed from: a */
            public C10300b m12618a(C10298b bVar) {
                if (bVar == C10298b.m12661K()) {
                    return this;
                }
                if (bVar.m12663I()) {
                    this.f23201e |= 1;
                    this.f23202f = bVar.f23190f;
                    m11657k();
                }
                C10478w0<C10305e, C10305e.C10307b, AbstractC10308f> w0Var = null;
                if (this.f23204h == null) {
                    if (!bVar.f23191g.isEmpty()) {
                        if (this.f23203g.isEmpty()) {
                            this.f23203g = bVar.f23191g;
                            this.f23201e &= -3;
                        } else {
                            m12612o();
                            this.f23203g.addAll(bVar.f23191g);
                        }
                        m11657k();
                    }
                } else if (!bVar.f23191g.isEmpty()) {
                    if (this.f23204h.m11700f()) {
                        this.f23204h.m11703c();
                        this.f23204h = null;
                        this.f23203g = bVar.f23191g;
                        this.f23201e &= -3;
                        this.f23204h = AbstractC10482x.f23816d ? m12604w() : null;
                    } else {
                        this.f23204h.m11705a(bVar.f23191g);
                    }
                }
                if (this.f23206j == null) {
                    if (!bVar.f23192h.isEmpty()) {
                        if (this.f23205i.isEmpty()) {
                            this.f23205i = bVar.f23192h;
                            this.f23201e &= -5;
                        } else {
                            m12614m();
                            this.f23205i.addAll(bVar.f23192h);
                        }
                        m11657k();
                    }
                } else if (!bVar.f23192h.isEmpty()) {
                    if (this.f23206j.m11700f()) {
                        this.f23206j.m11703c();
                        this.f23206j = null;
                        this.f23205i = bVar.f23192h;
                        this.f23201e &= -5;
                        this.f23206j = AbstractC10482x.f23816d ? m12606u() : null;
                    } else {
                        this.f23206j.m11705a(bVar.f23192h);
                    }
                }
                if (this.f23208l == null) {
                    if (!bVar.f23193i.isEmpty()) {
                        if (this.f23207k.isEmpty()) {
                            this.f23207k = bVar.f23193i;
                            this.f23201e &= -9;
                        } else {
                            m12611p();
                            this.f23207k.addAll(bVar.f23193i);
                        }
                        m11657k();
                    }
                } else if (!bVar.f23193i.isEmpty()) {
                    if (this.f23208l.m11700f()) {
                        this.f23208l.m11703c();
                        this.f23208l = null;
                        this.f23207k = bVar.f23193i;
                        this.f23201e &= -9;
                        this.f23208l = AbstractC10482x.f23816d ? m12603x() : null;
                    } else {
                        this.f23208l.m11705a(bVar.f23193i);
                    }
                }
                if (this.f23210n == null) {
                    if (!bVar.f23194j.isEmpty()) {
                        if (this.f23209m.isEmpty()) {
                            this.f23209m = bVar.f23194j;
                            this.f23201e &= -17;
                        } else {
                            m12615l();
                            this.f23209m.addAll(bVar.f23194j);
                        }
                        m11657k();
                    }
                } else if (!bVar.f23194j.isEmpty()) {
                    if (this.f23210n.m11700f()) {
                        this.f23210n.m11703c();
                        this.f23210n = null;
                        this.f23209m = bVar.f23194j;
                        this.f23201e &= -17;
                        this.f23210n = AbstractC10482x.f23816d ? m12607t() : null;
                    } else {
                        this.f23210n.m11705a(bVar.f23194j);
                    }
                }
                if (this.f23212p == null) {
                    if (!bVar.f23195k.isEmpty()) {
                        if (this.f23211o.isEmpty()) {
                            this.f23211o = bVar.f23195k;
                            this.f23201e &= -33;
                        } else {
                            m12613n();
                            this.f23211o.addAll(bVar.f23195k);
                        }
                        m11657k();
                    }
                } else if (!bVar.f23195k.isEmpty()) {
                    if (this.f23212p.m11700f()) {
                        this.f23212p.m11703c();
                        this.f23212p = null;
                        this.f23211o = bVar.f23195k;
                        this.f23201e &= -33;
                        this.f23212p = AbstractC10482x.f23816d ? m12605v() : null;
                    } else {
                        this.f23212p.m11705a(bVar.f23195k);
                    }
                }
                if (this.f23214r == null) {
                    if (!bVar.f23196l.isEmpty()) {
                        if (this.f23213q.isEmpty()) {
                            this.f23213q = bVar.f23196l;
                            this.f23201e &= -65;
                        } else {
                            m12610q();
                            this.f23213q.addAll(bVar.f23196l);
                        }
                        m11657k();
                    }
                } else if (!bVar.f23196l.isEmpty()) {
                    if (this.f23214r.m11700f()) {
                        this.f23214r.m11703c();
                        this.f23214r = null;
                        this.f23213q = bVar.f23196l;
                        this.f23201e &= -65;
                        this.f23214r = AbstractC10482x.f23816d ? m12602y() : null;
                    } else {
                        this.f23214r.m11705a(bVar.f23196l);
                    }
                }
                if (bVar.m12662J()) {
                    m12617a(bVar.m12668D());
                }
                if (this.f23218v == null) {
                    if (!bVar.f23198n.isEmpty()) {
                        if (this.f23217u.isEmpty()) {
                            this.f23217u = bVar.f23198n;
                            this.f23201e &= -257;
                        } else {
                            m12608s();
                            this.f23217u.addAll(bVar.f23198n);
                        }
                        m11657k();
                    }
                } else if (!bVar.f23198n.isEmpty()) {
                    if (this.f23218v.m11700f()) {
                        this.f23218v.m11703c();
                        this.f23218v = null;
                        this.f23217u = bVar.f23198n;
                        this.f23201e &= -257;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12621B();
                        }
                        this.f23218v = w0Var;
                    } else {
                        this.f23218v.m11705a(bVar.f23198n);
                    }
                }
                if (!bVar.f23199o.isEmpty()) {
                    if (this.f23219w.isEmpty()) {
                        this.f23219w = bVar.f23199o;
                        this.f23201e &= -513;
                    } else {
                        m12609r();
                        this.f23219w.addAll(bVar.f23199o);
                    }
                    m11657k();
                }
                mo11668b(bVar.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10300b m12617a(C10392v vVar) {
                C10392v vVar2;
                C10506x0<C10392v, C10392v.C10394b, AbstractC10395w> x0Var = this.f23216t;
                if (x0Var == null) {
                    if ((this.f23201e & 128) == 0 || (vVar2 = this.f23215s) == null || vVar2 == C10392v.m12009E()) {
                        this.f23215s = vVar;
                    } else {
                        C10392v.C10394b b = C10392v.m12001b(this.f23215s);
                        b.m11991a(vVar);
                        this.f23215s = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(vVar);
                }
                this.f23201e |= 128;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10300b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10300b mo11668b(C10247f1 f1Var) {
                return (C10300b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10300b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            /* renamed from: b */
            public C10300b m12616b(String str) {
                if (str != null) {
                    this.f23201e |= 1;
                    this.f23202f = str;
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10298b mo11818b() {
                return C10298b.m12661K();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10298b build() {
                C10298b E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23164d;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10300b clone() {
                return (C10300b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23165e;
                gVar.m11629a(C10298b.class, C10300b.class);
                return gVar;
            }

            /* renamed from: l */
            public final void m12615l() {
                if ((this.f23201e & 16) == 0) {
                    this.f23209m = new ArrayList(this.f23209m);
                    this.f23201e |= 16;
                }
            }

            /* renamed from: m */
            public final void m12614m() {
                if ((this.f23201e & 4) == 0) {
                    this.f23205i = new ArrayList(this.f23205i);
                    this.f23201e |= 4;
                }
            }

            /* renamed from: n */
            public final void m12613n() {
                if ((this.f23201e & 32) == 0) {
                    this.f23211o = new ArrayList(this.f23211o);
                    this.f23201e |= 32;
                }
            }

            /* renamed from: o */
            public final void m12612o() {
                if ((this.f23201e & 2) == 0) {
                    this.f23203g = new ArrayList(this.f23203g);
                    this.f23201e |= 2;
                }
            }

            /* renamed from: p */
            public final void m12611p() {
                if ((this.f23201e & 8) == 0) {
                    this.f23207k = new ArrayList(this.f23207k);
                    this.f23201e |= 8;
                }
            }

            /* renamed from: q */
            public final void m12610q() {
                if ((this.f23201e & 64) == 0) {
                    this.f23213q = new ArrayList(this.f23213q);
                    this.f23201e |= 64;
                }
            }

            /* renamed from: r */
            public final void m12609r() {
                if ((this.f23201e & 512) == 0) {
                    this.f23219w = new C10240d0(this.f23219w);
                    this.f23201e |= 512;
                }
            }

            /* renamed from: s */
            public final void m12608s() {
                if ((this.f23201e & 256) == 0) {
                    this.f23217u = new ArrayList(this.f23217u);
                    this.f23201e |= 256;
                }
            }

            /* renamed from: t */
            public final C10478w0<C10314d, C10314d.C10316b, AbstractC10324e> m12607t() {
                if (this.f23210n == null) {
                    this.f23210n = new C10478w0<>(this.f23209m, (this.f23201e & 16) != 0, m11661g(), m11659i());
                    this.f23209m = null;
                }
                return this.f23210n;
            }

            /* renamed from: u */
            public final C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> m12606u() {
                if (this.f23206j == null) {
                    this.f23206j = new C10478w0<>(this.f23205i, (this.f23201e & 4) != 0, m11661g(), m11659i());
                    this.f23205i = null;
                }
                return this.f23206j;
            }

            /* renamed from: v */
            public final C10478w0<C10301c, C10301c.C10303b, AbstractC10304d> m12605v() {
                if (this.f23212p == null) {
                    this.f23212p = new C10478w0<>(this.f23211o, (this.f23201e & 32) != 0, m11661g(), m11659i());
                    this.f23211o = null;
                }
                return this.f23212p;
            }

            /* renamed from: w */
            public final C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> m12604w() {
                if (this.f23204h == null) {
                    this.f23204h = new C10478w0<>(this.f23203g, (this.f23201e & 2) != 0, m11661g(), m11659i());
                    this.f23203g = null;
                }
                return this.f23204h;
            }

            /* renamed from: x */
            public final C10478w0<C10298b, C10300b, AbstractC10312c> m12603x() {
                if (this.f23208l == null) {
                    this.f23208l = new C10478w0<>(this.f23207k, (this.f23201e & 8) != 0, m11661g(), m11659i());
                    this.f23207k = null;
                }
                return this.f23208l;
            }

            /* renamed from: y */
            public final C10478w0<C10309b0, C10309b0.C10311b, AbstractC10313c0> m12602y() {
                if (this.f23214r == null) {
                    this.f23214r = new C10478w0<>(this.f23213q, (this.f23201e & 64) != 0, m11661g(), m11659i());
                    this.f23213q = null;
                }
                return this.f23214r;
            }

            /* renamed from: z */
            public C10392v m12601z() {
                C10506x0<C10392v, C10392v.C10394b, AbstractC10395w> x0Var = this.f23216t;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10392v vVar = this.f23215s;
                C10392v vVar2 = vVar;
                if (vVar == null) {
                    vVar2 = C10392v.m12009E();
                }
                return vVar2;
            }
        }

        /* renamed from: h.i.g.k$b$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$c.class */
        public static final class C10301c extends AbstractC10482x implements AbstractC10304d {

            /* renamed from: j */
            public static final C10301c f23220j = new C10301c();
            @Deprecated

            /* renamed from: k */
            public static final AbstractC10462s0<C10301c> f23221k = new C10302a();

            /* renamed from: e */
            public int f23222e;

            /* renamed from: f */
            public int f23223f;

            /* renamed from: g */
            public int f23224g;

            /* renamed from: h */
            public C10354l f23225h;

            /* renamed from: i */
            public byte f23226i;

            /* renamed from: h.i.g.k$b$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$c$a.class */
            public static final class C10302a extends AbstractC10235c<C10301c> {
                @Override // p081h.p203i.p401g.AbstractC10462s0
                /* renamed from: a */
                public C10301c mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                    return new C10301c(hVar, rVar);
                }
            }

            /* renamed from: h.i.g.k$b$c$b */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$c$b.class */
            public static final class C10303b extends AbstractC10482x.AbstractC10484b<C10303b> implements AbstractC10304d {

                /* renamed from: e */
                public int f23227e;

                /* renamed from: f */
                public int f23228f;

                /* renamed from: g */
                public int f23229g;

                /* renamed from: h */
                public C10354l f23230h;

                /* renamed from: i */
                public C10506x0<C10354l, C10354l.C10356b, AbstractC10364m> f23231i;

                public C10303b() {
                    m12581n();
                }

                public C10303b(AbstractC10482x.AbstractC10486c cVar) {
                    super(cVar);
                    m12581n();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: E */
                public C10301c mo11825E() {
                    int i;
                    C10301c cVar = new C10301c(this);
                    int i2 = this.f23227e;
                    if ((i2 & 1) != 0) {
                        cVar.f23223f = this.f23228f;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    int i3 = i;
                    if ((i2 & 2) != 0) {
                        cVar.f23224g = this.f23229g;
                        i3 = i | 2;
                    }
                    int i4 = i3;
                    if ((i2 & 4) != 0) {
                        C10506x0<C10354l, C10354l.C10356b, AbstractC10364m> x0Var = this.f23231i;
                        if (x0Var == null) {
                            cVar.f23225h = this.f23230h;
                        } else {
                            cVar.f23225h = x0Var.m11583b();
                        }
                        i4 = i3 | 4;
                    }
                    cVar.f23222e = i4;
                    m11658j();
                    return cVar;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public final C10303b mo11672a(C10247f1 f1Var) {
                    super.mo11672a(f1Var);
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public p081h.p203i.p401g.C10295k.C10298b.C10301c.C10303b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        h.i.g.s0<h.i.g.k$b$c> r0 = p081h.p203i.p401g.C10295k.C10298b.C10301c.f23221k     // Catch: all -> 0x001c, a0 -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                        h.i.g.k$b$c r0 = (p081h.p203i.p401g.C10295k.C10298b.C10301c) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        h.i.g.k$b$c$b r0 = r0.m12587a(r1)
                    L_0x001a:
                        r0 = r4
                        return r0
                    L_0x001c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L_0x0031
                    L_0x0022:
                        r5 = move-exception
                        r0 = r5
                        h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                        h.i.g.k$b$c r0 = (p081h.p203i.p401g.C10295k.C10298b.C10301c) r0     // Catch: all -> 0x001c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                        throw r0     // Catch: all -> 0x0030
                    L_0x0030:
                        r5 = move-exception
                    L_0x0031:
                        r0 = r6
                        if (r0 == 0) goto L_0x003b
                        r0 = r4
                        r1 = r6
                        h.i.g.k$b$c$b r0 = r0.m12587a(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10298b.C10301c.C10303b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$b$c$b");
                }

                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10303b mo11824a(AbstractC10287j0 j0Var) {
                    if (j0Var instanceof C10301c) {
                        return m12587a((C10301c) j0Var);
                    }
                    super.mo11824a(j0Var);
                    return this;
                }

                /* renamed from: a */
                public C10303b m12587a(C10301c cVar) {
                    if (cVar == C10301c.m12590w()) {
                        return this;
                    }
                    if (cVar.m12591v()) {
                        m12584d(cVar.m12594s());
                    }
                    if (cVar.m12593t()) {
                        m12585c(cVar.m12596q());
                    }
                    if (cVar.m12592u()) {
                        m12586a(cVar.m12595r());
                    }
                    mo11668b(cVar.f23817c);
                    m11657k();
                    return this;
                }

                /* renamed from: a */
                public C10303b m12586a(C10354l lVar) {
                    C10354l lVar2;
                    C10506x0<C10354l, C10354l.C10356b, AbstractC10364m> x0Var = this.f23231i;
                    if (x0Var == null) {
                        if ((this.f23227e & 4) == 0 || (lVar2 = this.f23230h) == null || lVar2 == C10354l.m12340w()) {
                            this.f23230h = lVar;
                        } else {
                            this.f23230h = C10354l.m12343b(this.f23230h).m12337a(lVar).mo11825E();
                        }
                        m11657k();
                    } else {
                        x0Var.m11584a(lVar);
                    }
                    this.f23227e |= 4;
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10303b mo11655a(C10418l.C10428g gVar, Object obj) {
                    super.mo11655a(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                /* renamed from: b */
                public final C10303b mo11668b(C10247f1 f1Var) {
                    return (C10303b) super.mo11668b(f1Var);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: b */
                public C10303b mo11652b(C10418l.C10428g gVar, Object obj) {
                    super.mo11652b(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: b */
                public C10301c mo11818b() {
                    return C10301c.m12590w();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                public C10301c build() {
                    C10301c E = mo11825E();
                    if (E.isInitialized()) {
                        return E;
                    }
                    throw AbstractC10219a.AbstractC10220a.m13080b(E);
                }

                /* renamed from: c */
                public C10303b m12585c(int i) {
                    this.f23227e |= 2;
                    this.f23229g = i;
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: c */
                public C10418l.C10420b mo11666c() {
                    return C10295k.f23166f;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                public C10303b clone() {
                    return (C10303b) super.clone();
                }

                /* renamed from: d */
                public C10303b m12584d(int i) {
                    this.f23227e |= 1;
                    this.f23228f = i;
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
                /* renamed from: h */
                public AbstractC10482x.C10491g mo11660h() {
                    AbstractC10482x.C10491g gVar = C10295k.f23167g;
                    gVar.m11629a(C10301c.class, C10303b.class);
                    return gVar;
                }

                /* renamed from: l */
                public C10354l m12583l() {
                    C10506x0<C10354l, C10354l.C10356b, AbstractC10364m> x0Var = this.f23231i;
                    if (x0Var != null) {
                        return x0Var.m11581d();
                    }
                    C10354l lVar = this.f23230h;
                    C10354l lVar2 = lVar;
                    if (lVar == null) {
                        lVar2 = C10354l.m12340w();
                    }
                    return lVar2;
                }

                /* renamed from: m */
                public final C10506x0<C10354l, C10354l.C10356b, AbstractC10364m> m12582m() {
                    if (this.f23231i == null) {
                        this.f23231i = new C10506x0<>(m12583l(), m11661g(), m11659i());
                        this.f23230h = null;
                    }
                    return this.f23231i;
                }

                /* renamed from: n */
                public final void m12581n() {
                    if (AbstractC10482x.f23816d) {
                        m12582m();
                    }
                }
            }

            public C10301c() {
                this.f23226i = (byte) (-1);
            }

            public C10301c(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                this();
                if (rVar != null) {
                    C10247f1.C10249b d = C10247f1.m13019d();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 8) {
                                        this.f23222e |= 1;
                                        this.f23223f = hVar.mo12908i();
                                    } else if (r == 16) {
                                        this.f23222e |= 2;
                                        this.f23224g = hVar.mo12908i();
                                    } else if (r == 26) {
                                        C10354l.C10356b f = (this.f23222e & 4) != 0 ? this.f23225h.mo11826f() : null;
                                        this.f23225h = (C10354l) hVar.mo12921a(C10354l.f23367i, rVar);
                                        if (f != null) {
                                            f.m12337a(this.f23225h);
                                            this.f23225h = f.mo11825E();
                                        }
                                        this.f23222e |= 4;
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e) {
                                e.m13078a(this);
                                throw e;
                            } catch (IOException e2) {
                                C10222a0 a0Var = new C10222a0(e2);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } finally {
                            this.f23817c = d.build();
                            mo11641n();
                        }
                    }
                    return;
                }
                throw new NullPointerException();
            }

            public C10301c(AbstractC10482x.AbstractC10484b<?> bVar) {
                super(bVar);
                this.f23226i = (byte) (-1);
            }

            /* renamed from: w */
            public static C10301c m12590w() {
                return f23220j;
            }

            /* renamed from: x */
            public static final C10418l.C10420b m12589x() {
                return C10295k.f23166f;
            }

            /* renamed from: y */
            public static C10303b m12588y() {
                return f23220j.mo11826f();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: a */
            public C10303b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
                return new C10303b(cVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: a */
            public void mo11692a(AbstractC10274i iVar) throws IOException {
                if ((this.f23222e & 1) != 0) {
                    iVar.mo12804c(1, this.f23223f);
                }
                if ((this.f23222e & 2) != 0) {
                    iVar.mo12804c(2, this.f23224g);
                }
                if ((this.f23222e & 4) != 0) {
                    iVar.mo12808b(3, m12595r());
                }
                this.f23817c.mo11692a(iVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10301c mo11818b() {
                return f23220j;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: d */
            public final C10247f1 mo11664d() {
                return this.f23817c;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: e */
            public C10303b mo11827e() {
                return m12588y();
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C10301c)) {
                    return super.equals(obj);
                }
                C10301c cVar = (C10301c) obj;
                if (m12591v() != cVar.m12591v()) {
                    return false;
                }
                if ((m12591v() && m12594s() != cVar.m12594s()) || m12593t() != cVar.m12593t()) {
                    return false;
                }
                if ((!m12593t() || m12596q() == cVar.m12596q()) && m12592u() == cVar.m12592u()) {
                    return (!m12592u() || m12595r().equals(cVar.m12595r())) && this.f23817c.equals(cVar.f23817c);
                }
                return false;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: f */
            public C10303b mo11826f() {
                C10303b bVar;
                if (this == f23220j) {
                    bVar = new C10303b();
                } else {
                    bVar = new C10303b();
                    bVar.m12587a(this);
                }
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: h */
            public int mo11678h() {
                int i = this.f23054b;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f23222e & 1) != 0) {
                    i2 = 0 + AbstractC10274i.m12838g(1, this.f23223f);
                }
                int i3 = i2;
                if ((this.f23222e & 2) != 0) {
                    i3 = i2 + AbstractC10274i.m12838g(2, this.f23224g);
                }
                int i4 = i3;
                if ((this.f23222e & 4) != 0) {
                    i4 = i3 + AbstractC10274i.m12840f(3, m12595r());
                }
                int h = i4 + this.f23817c.mo11678h();
                this.f23054b = h;
                return h;
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public int hashCode() {
                int i = this.f23058a;
                if (i != 0) {
                    return i;
                }
                int hashCode = 779 + m12589x().hashCode();
                int i2 = hashCode;
                if (m12591v()) {
                    i2 = (((hashCode * 37) + 1) * 53) + m12594s();
                }
                int i3 = i2;
                if (m12593t()) {
                    i3 = (((i2 * 37) + 2) * 53) + m12596q();
                }
                int i4 = i3;
                if (m12592u()) {
                    i4 = (((i3 * 37) + 3) * 53) + m12595r().hashCode();
                }
                int hashCode2 = (i4 * 29) + this.f23817c.hashCode();
                this.f23058a = hashCode2;
                return hashCode2;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
            public final boolean isInitialized() {
                byte b = this.f23226i;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                if (!m12592u() || m12595r().isInitialized()) {
                    this.f23226i = (byte) 1;
                    return true;
                }
                this.f23226i = (byte) 0;
                return false;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: j */
            public AbstractC10462s0<C10301c> mo11677j() {
                return f23221k;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: m */
            public AbstractC10482x.C10491g mo11676m() {
                AbstractC10482x.C10491g gVar = C10295k.f23167g;
                gVar.m11629a(C10301c.class, C10303b.class);
                return gVar;
            }

            /* renamed from: q */
            public int m12596q() {
                return this.f23224g;
            }

            /* renamed from: r */
            public C10354l m12595r() {
                C10354l lVar = this.f23225h;
                C10354l lVar2 = lVar;
                if (lVar == null) {
                    lVar2 = C10354l.m12340w();
                }
                return lVar2;
            }

            /* renamed from: s */
            public int m12594s() {
                return this.f23223f;
            }

            /* renamed from: t */
            public boolean m12593t() {
                return (this.f23222e & 2) != 0;
            }

            /* renamed from: u */
            public boolean m12592u() {
                return (this.f23222e & 4) != 0;
            }

            /* renamed from: v */
            public boolean m12591v() {
                boolean z = true;
                if ((this.f23222e & 1) == 0) {
                    z = false;
                }
                return z;
            }
        }

        /* renamed from: h.i.g.k$b$d */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$d.class */
        public interface AbstractC10304d extends AbstractC10444n0 {
        }

        /* renamed from: h.i.g.k$b$e */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$e.class */
        public static final class C10305e extends AbstractC10482x implements AbstractC10308f {

            /* renamed from: i */
            public static final C10305e f23232i = new C10305e();
            @Deprecated

            /* renamed from: j */
            public static final AbstractC10462s0<C10305e> f23233j = new C10306a();

            /* renamed from: e */
            public int f23234e;

            /* renamed from: f */
            public int f23235f;

            /* renamed from: g */
            public int f23236g;

            /* renamed from: h */
            public byte f23237h;

            /* renamed from: h.i.g.k$b$e$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$e$a.class */
            public static final class C10306a extends AbstractC10235c<C10305e> {
                @Override // p081h.p203i.p401g.AbstractC10462s0
                /* renamed from: a */
                public C10305e mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                    return new C10305e(hVar, rVar);
                }
            }

            /* renamed from: h.i.g.k$b$e$b */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$e$b.class */
            public static final class C10307b extends AbstractC10482x.AbstractC10484b<C10307b> implements AbstractC10308f {

                /* renamed from: e */
                public int f23238e;

                /* renamed from: f */
                public int f23239f;

                /* renamed from: g */
                public int f23240g;

                public C10307b() {
                    m12567l();
                }

                public C10307b(AbstractC10482x.AbstractC10486c cVar) {
                    super(cVar);
                    m12567l();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: E */
                public C10305e mo11825E() {
                    int i;
                    C10305e eVar = new C10305e(this);
                    int i2 = this.f23238e;
                    if ((i2 & 1) != 0) {
                        eVar.f23235f = this.f23239f;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    int i3 = i;
                    if ((i2 & 2) != 0) {
                        eVar.f23236g = this.f23240g;
                        i3 = i | 2;
                    }
                    eVar.f23234e = i3;
                    m11658j();
                    return eVar;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public final C10307b mo11672a(C10247f1 f1Var) {
                    super.mo11672a(f1Var);
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public p081h.p203i.p401g.C10295k.C10298b.C10305e.C10307b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        h.i.g.s0<h.i.g.k$b$e> r0 = p081h.p203i.p401g.C10295k.C10298b.C10305e.f23233j     // Catch: all -> 0x001c, a0 -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                        h.i.g.k$b$e r0 = (p081h.p203i.p401g.C10295k.C10298b.C10305e) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        h.i.g.k$b$e$b r0 = r0.m12570a(r1)
                    L_0x001a:
                        r0 = r4
                        return r0
                    L_0x001c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L_0x0031
                    L_0x0022:
                        r5 = move-exception
                        r0 = r5
                        h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                        h.i.g.k$b$e r0 = (p081h.p203i.p401g.C10295k.C10298b.C10305e) r0     // Catch: all -> 0x001c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                        throw r0     // Catch: all -> 0x0030
                    L_0x0030:
                        r5 = move-exception
                    L_0x0031:
                        r0 = r6
                        if (r0 == 0) goto L_0x003b
                        r0 = r4
                        r1 = r6
                        h.i.g.k$b$e$b r0 = r0.m12570a(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10298b.C10305e.C10307b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$b$e$b");
                }

                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10307b mo11824a(AbstractC10287j0 j0Var) {
                    if (j0Var instanceof C10305e) {
                        m12570a((C10305e) j0Var);
                        return this;
                    }
                    super.mo11824a(j0Var);
                    return this;
                }

                /* renamed from: a */
                public C10307b m12570a(C10305e eVar) {
                    if (eVar == C10305e.m12573u()) {
                        return this;
                    }
                    if (eVar.m12574t()) {
                        m12568d(eVar.m12576r());
                    }
                    if (eVar.m12575s()) {
                        m12569c(eVar.m12577q());
                    }
                    mo11668b(eVar.f23817c);
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10307b mo11655a(C10418l.C10428g gVar, Object obj) {
                    super.mo11655a(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                /* renamed from: b */
                public final C10307b mo11668b(C10247f1 f1Var) {
                    return (C10307b) super.mo11668b(f1Var);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: b */
                public C10307b mo11652b(C10418l.C10428g gVar, Object obj) {
                    super.mo11652b(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: b */
                public C10305e mo11818b() {
                    return C10305e.m12573u();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                public C10305e build() {
                    C10305e E = mo11825E();
                    if (E.isInitialized()) {
                        return E;
                    }
                    throw AbstractC10219a.AbstractC10220a.m13080b(E);
                }

                /* renamed from: c */
                public C10307b m12569c(int i) {
                    this.f23238e |= 2;
                    this.f23240g = i;
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: c */
                public C10418l.C10420b mo11666c() {
                    return C10295k.f23168h;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                public C10307b clone() {
                    return (C10307b) super.clone();
                }

                /* renamed from: d */
                public C10307b m12568d(int i) {
                    this.f23238e |= 1;
                    this.f23239f = i;
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
                /* renamed from: h */
                public AbstractC10482x.C10491g mo11660h() {
                    AbstractC10482x.C10491g gVar = C10295k.f23169i;
                    gVar.m11629a(C10305e.class, C10307b.class);
                    return gVar;
                }

                /* renamed from: l */
                public final void m12567l() {
                }
            }

            public C10305e() {
                this.f23237h = (byte) (-1);
            }

            public C10305e(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                this();
                if (rVar != null) {
                    C10247f1.C10249b d = C10247f1.m13019d();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 8) {
                                        this.f23234e |= 1;
                                        this.f23235f = hVar.mo12908i();
                                    } else if (r == 16) {
                                        this.f23234e |= 2;
                                        this.f23236g = hVar.mo12908i();
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e) {
                                e.m13078a(this);
                                throw e;
                            } catch (IOException e2) {
                                C10222a0 a0Var = new C10222a0(e2);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } finally {
                            this.f23817c = d.build();
                            mo11641n();
                        }
                    }
                    return;
                }
                throw new NullPointerException();
            }

            public C10305e(AbstractC10482x.AbstractC10484b<?> bVar) {
                super(bVar);
                this.f23237h = (byte) (-1);
            }

            /* renamed from: u */
            public static C10305e m12573u() {
                return f23232i;
            }

            /* renamed from: v */
            public static final C10418l.C10420b m12572v() {
                return C10295k.f23168h;
            }

            /* renamed from: w */
            public static C10307b m12571w() {
                return f23232i.mo11826f();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: a */
            public C10307b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
                return new C10307b(cVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: a */
            public void mo11692a(AbstractC10274i iVar) throws IOException {
                if ((this.f23234e & 1) != 0) {
                    iVar.mo12804c(1, this.f23235f);
                }
                if ((this.f23234e & 2) != 0) {
                    iVar.mo12804c(2, this.f23236g);
                }
                this.f23817c.mo11692a(iVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10305e mo11818b() {
                return f23232i;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: d */
            public final C10247f1 mo11664d() {
                return this.f23817c;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: e */
            public C10307b mo11827e() {
                return m12571w();
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C10305e)) {
                    return super.equals(obj);
                }
                C10305e eVar = (C10305e) obj;
                if (m12574t() != eVar.m12574t()) {
                    return false;
                }
                if ((!m12574t() || m12576r() == eVar.m12576r()) && m12575s() == eVar.m12575s()) {
                    return (!m12575s() || m12577q() == eVar.m12577q()) && this.f23817c.equals(eVar.f23817c);
                }
                return false;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: f */
            public C10307b mo11826f() {
                C10307b bVar;
                if (this == f23232i) {
                    bVar = new C10307b();
                } else {
                    bVar = new C10307b();
                    bVar.m12570a(this);
                }
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: h */
            public int mo11678h() {
                int i = this.f23054b;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f23234e & 1) != 0) {
                    i2 = 0 + AbstractC10274i.m12838g(1, this.f23235f);
                }
                int i3 = i2;
                if ((this.f23234e & 2) != 0) {
                    i3 = i2 + AbstractC10274i.m12838g(2, this.f23236g);
                }
                int h = i3 + this.f23817c.mo11678h();
                this.f23054b = h;
                return h;
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public int hashCode() {
                int i = this.f23058a;
                if (i != 0) {
                    return i;
                }
                int hashCode = 779 + m12572v().hashCode();
                int i2 = hashCode;
                if (m12574t()) {
                    i2 = (((hashCode * 37) + 1) * 53) + m12576r();
                }
                int i3 = i2;
                if (m12575s()) {
                    i3 = (((i2 * 37) + 2) * 53) + m12577q();
                }
                int hashCode2 = (i3 * 29) + this.f23817c.hashCode();
                this.f23058a = hashCode2;
                return hashCode2;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
            public final boolean isInitialized() {
                byte b = this.f23237h;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.f23237h = (byte) 1;
                return true;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: j */
            public AbstractC10462s0<C10305e> mo11677j() {
                return f23233j;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: m */
            public AbstractC10482x.C10491g mo11676m() {
                AbstractC10482x.C10491g gVar = C10295k.f23169i;
                gVar.m11629a(C10305e.class, C10307b.class);
                return gVar;
            }

            /* renamed from: q */
            public int m12577q() {
                return this.f23236g;
            }

            /* renamed from: r */
            public int m12576r() {
                return this.f23235f;
            }

            /* renamed from: s */
            public boolean m12575s() {
                return (this.f23234e & 2) != 0;
            }

            /* renamed from: t */
            public boolean m12574t() {
                boolean z = true;
                if ((this.f23234e & 1) == 0) {
                    z = false;
                }
                return z;
            }
        }

        /* renamed from: h.i.g.k$b$f */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b$f.class */
        public interface AbstractC10308f extends AbstractC10444n0 {
        }

        public C10298b() {
            this.f23200p = (byte) (-1);
            this.f23190f = "";
            this.f23191g = Collections.emptyList();
            this.f23192h = Collections.emptyList();
            this.f23193i = Collections.emptyList();
            this.f23194j = Collections.emptyList();
            this.f23195k = Collections.emptyList();
            this.f23196l = Collections.emptyList();
            this.f23198n = Collections.emptyList();
            this.f23199o = C10240d0.f23071d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10298b(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            switch (r) {
                                case 0:
                                    break;
                                case 10:
                                    AbstractC10253g c = hVar.mo12918c();
                                    this.f23189e = 1 | this.f23189e;
                                    this.f23190f = c;
                                    continue;
                                case 18:
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.f23191g = new ArrayList();
                                        i |= 2;
                                    }
                                    this.f23191g.add(hVar.mo12921a(C10366n.f23403r, rVar));
                                    continue;
                                case 26:
                                    i = i;
                                    if ((i & 8) == 0) {
                                        this.f23193i = new ArrayList();
                                        i |= 8;
                                    }
                                    this.f23193i.add(hVar.mo12921a(f23188r, rVar));
                                    continue;
                                case 34:
                                    i = i;
                                    if ((i & 16) == 0) {
                                        this.f23194j = new ArrayList();
                                        i |= 16;
                                    }
                                    this.f23194j.add(hVar.mo12921a(C10314d.f23252m, rVar));
                                    continue;
                                case 42:
                                    i = i;
                                    if ((i & 32) == 0) {
                                        this.f23195k = new ArrayList();
                                        i |= 32;
                                    }
                                    this.f23195k.add(hVar.mo12921a(C10301c.f23221k, rVar));
                                    continue;
                                case 50:
                                    i = i;
                                    if ((i & 4) == 0) {
                                        this.f23192h = new ArrayList();
                                        i |= 4;
                                    }
                                    this.f23192h.add(hVar.mo12921a(C10366n.f23403r, rVar));
                                    continue;
                                case 58:
                                    C10392v.C10394b f = (this.f23189e & 2) != 0 ? this.f23197m.mo11826f() : null;
                                    this.f23197m = (C10392v) hVar.mo12921a(C10392v.f23572n, rVar);
                                    if (f != null) {
                                        f.m11991a(this.f23197m);
                                        this.f23197m = f.mo11825E();
                                    }
                                    this.f23189e |= 2;
                                    continue;
                                case 66:
                                    i = i;
                                    if ((i & 64) == 0) {
                                        this.f23196l = new ArrayList();
                                        i |= 64;
                                    }
                                    this.f23196l.add(hVar.mo12921a(C10309b0.f23242j, rVar));
                                    continue;
                                case 74:
                                    i = i;
                                    if ((i & 256) == 0) {
                                        this.f23198n = new ArrayList();
                                        i |= 256;
                                    }
                                    this.f23198n.add(hVar.mo12921a(C10305e.f23233j, rVar));
                                    continue;
                                case 82:
                                    AbstractC10253g c2 = hVar.mo12918c();
                                    i = i;
                                    if ((i & 512) == 0) {
                                        this.f23199o = new C10240d0();
                                        i |= 512;
                                    }
                                    this.f23199o.mo12889b(c2);
                                    continue;
                                default:
                                    if (!mo11647a(hVar, d, rVar, r)) {
                                        break;
                                    } else {
                                        continue;
                                    }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 2) != 0) {
                            this.f23191g = Collections.unmodifiableList(this.f23191g);
                        }
                        if ((i & 8) != 0) {
                            this.f23193i = Collections.unmodifiableList(this.f23193i);
                        }
                        if ((i & 16) != 0) {
                            this.f23194j = Collections.unmodifiableList(this.f23194j);
                        }
                        if ((i & 32) != 0) {
                            this.f23195k = Collections.unmodifiableList(this.f23195k);
                        }
                        if ((i & 4) != 0) {
                            this.f23192h = Collections.unmodifiableList(this.f23192h);
                        }
                        if ((i & 64) != 0) {
                            this.f23196l = Collections.unmodifiableList(this.f23196l);
                        }
                        if ((i & 256) != 0) {
                            this.f23198n = Collections.unmodifiableList(this.f23198n);
                        }
                        if ((i & 512) != 0) {
                            this.f23199o = this.f23199o.mo12887o();
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10298b(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23200p = (byte) (-1);
        }

        /* renamed from: K */
        public static C10298b m12661K() {
            return f23187q;
        }

        /* renamed from: L */
        public static final C10418l.C10420b m12660L() {
            return C10295k.f23164d;
        }

        /* renamed from: M */
        public static C10300b m12659M() {
            return f23187q.mo11826f();
        }

        /* renamed from: A */
        public List<C10298b> m12671A() {
            return this.f23193i;
        }

        /* renamed from: B */
        public int m12670B() {
            return this.f23196l.size();
        }

        /* renamed from: C */
        public List<C10309b0> m12669C() {
            return this.f23196l;
        }

        /* renamed from: D */
        public C10392v m12668D() {
            C10392v vVar = this.f23197m;
            C10392v vVar2 = vVar;
            if (vVar == null) {
                vVar2 = C10392v.m12009E();
            }
            return vVar2;
        }

        /* renamed from: E */
        public int m12667E() {
            return this.f23199o.size();
        }

        /* renamed from: F */
        public AbstractC10476v0 m12666F() {
            return this.f23199o;
        }

        /* renamed from: G */
        public int m12665G() {
            return this.f23198n.size();
        }

        /* renamed from: H */
        public List<C10305e> m12664H() {
            return this.f23198n;
        }

        /* renamed from: I */
        public boolean m12663I() {
            boolean z = true;
            if ((this.f23189e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: J */
        public boolean m12662J() {
            return (this.f23189e & 2) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10300b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10300b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23189e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23190f);
            }
            for (int i = 0; i < this.f23191g.size(); i++) {
                iVar.mo12808b(2, this.f23191g.get(i));
            }
            for (int i2 = 0; i2 < this.f23193i.size(); i2++) {
                iVar.mo12808b(3, this.f23193i.get(i2));
            }
            for (int i3 = 0; i3 < this.f23194j.size(); i3++) {
                iVar.mo12808b(4, this.f23194j.get(i3));
            }
            for (int i4 = 0; i4 < this.f23195k.size(); i4++) {
                iVar.mo12808b(5, this.f23195k.get(i4));
            }
            for (int i5 = 0; i5 < this.f23192h.size(); i5++) {
                iVar.mo12808b(6, this.f23192h.get(i5));
            }
            if ((this.f23189e & 2) != 0) {
                iVar.mo12808b(7, m12668D());
            }
            for (int i6 = 0; i6 < this.f23196l.size(); i6++) {
                iVar.mo12808b(8, this.f23196l.get(i6));
            }
            for (int i7 = 0; i7 < this.f23198n.size(); i7++) {
                iVar.mo12808b(9, this.f23198n.get(i7));
            }
            for (int i8 = 0; i8 < this.f23199o.size(); i8++) {
                AbstractC10482x.m11691a(iVar, 10, this.f23199o.mo12891a(i8));
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10298b mo11818b() {
            return f23187q;
        }

        /* renamed from: b */
        public C10314d m12652b(int i) {
            return this.f23194j.get(i);
        }

        /* renamed from: c */
        public C10366n m12649c(int i) {
            return this.f23192h.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        /* renamed from: d */
        public C10301c m12646d(int i) {
            return this.f23195k.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10300b mo11827e() {
            return m12659M();
        }

        /* renamed from: e */
        public C10366n m12643e(int i) {
            return this.f23191g.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10298b)) {
                return super.equals(obj);
            }
            C10298b bVar = (C10298b) obj;
            if (m12663I() != bVar.m12663I()) {
                return false;
            }
            if ((!m12663I() || m12624y().equals(bVar.m12624y())) && m12625x().equals(bVar.m12625x()) && m12629t().equals(bVar.m12629t()) && m12671A().equals(bVar.m12671A()) && m12631r().equals(bVar.m12631r()) && m12627v().equals(bVar.m12627v()) && m12669C().equals(bVar.m12669C()) && m12662J() == bVar.m12662J()) {
                return (!m12662J() || m12668D().equals(bVar.m12668D())) && m12664H().equals(bVar.m12664H()) && m12666F().equals(bVar.m12666F()) && this.f23817c.equals(bVar.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10300b mo11826f() {
            return this == f23187q ? new C10300b() : new C10300b().m12618a(this);
        }

        /* renamed from: f */
        public C10298b m12640f(int i) {
            return this.f23193i.get(i);
        }

        /* renamed from: g */
        public C10309b0 m12637g(int i) {
            return this.f23196l.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int a = (this.f23189e & 1) != 0 ? AbstractC10482x.m11694a(1, this.f23190f) + 0 : 0;
            for (int i2 = 0; i2 < this.f23191g.size(); i2++) {
                a += AbstractC10274i.m12840f(2, this.f23191g.get(i2));
            }
            for (int i3 = 0; i3 < this.f23193i.size(); i3++) {
                a += AbstractC10274i.m12840f(3, this.f23193i.get(i3));
            }
            for (int i4 = 0; i4 < this.f23194j.size(); i4++) {
                a += AbstractC10274i.m12840f(4, this.f23194j.get(i4));
            }
            for (int i5 = 0; i5 < this.f23195k.size(); i5++) {
                a += AbstractC10274i.m12840f(5, this.f23195k.get(i5));
            }
            for (int i6 = 0; i6 < this.f23192h.size(); i6++) {
                a += AbstractC10274i.m12840f(6, this.f23192h.get(i6));
            }
            int i7 = a;
            if ((this.f23189e & 2) != 0) {
                i7 = a + AbstractC10274i.m12840f(7, m12668D());
            }
            for (int i8 = 0; i8 < this.f23196l.size(); i8++) {
                i7 += AbstractC10274i.m12840f(8, this.f23196l.get(i8));
            }
            for (int i9 = 0; i9 < this.f23198n.size(); i9++) {
                i7 += AbstractC10274i.m12840f(9, this.f23198n.get(i9));
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.f23199o.size(); i11++) {
                i10 += AbstractC10482x.m11679c(this.f23199o.mo12891a(i11));
            }
            int size = i7 + i10 + (m12666F().size() * 1) + this.f23817c.mo11678h();
            this.f23054b = size;
            return size;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12660L().hashCode();
            int i2 = hashCode;
            if (m12663I()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12624y().hashCode();
            }
            int i3 = i2;
            if (m12626w() > 0) {
                i3 = (((i2 * 37) + 2) * 53) + m12625x().hashCode();
            }
            int i4 = i3;
            if (m12630s() > 0) {
                i4 = (((i3 * 37) + 6) * 53) + m12629t().hashCode();
            }
            int i5 = i4;
            if (m12623z() > 0) {
                i5 = (((i4 * 37) + 3) * 53) + m12671A().hashCode();
            }
            int i6 = i5;
            if (m12632q() > 0) {
                i6 = (((i5 * 37) + 4) * 53) + m12631r().hashCode();
            }
            int i7 = i6;
            if (m12628u() > 0) {
                i7 = (((i6 * 37) + 5) * 53) + m12627v().hashCode();
            }
            int i8 = i7;
            if (m12670B() > 0) {
                i8 = (((i7 * 37) + 8) * 53) + m12669C().hashCode();
            }
            int i9 = i8;
            if (m12662J()) {
                i9 = (((i8 * 37) + 7) * 53) + m12668D().hashCode();
            }
            int i10 = i9;
            if (m12665G() > 0) {
                i10 = (((i9 * 37) + 9) * 53) + m12664H().hashCode();
            }
            int i11 = i10;
            if (m12667E() > 0) {
                i11 = (((i10 * 37) + 10) * 53) + m12666F().hashCode();
            }
            int hashCode2 = (i11 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23200p;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12626w(); i++) {
                if (!m12643e(i).isInitialized()) {
                    this.f23200p = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < m12630s(); i2++) {
                if (!m12649c(i2).isInitialized()) {
                    this.f23200p = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < m12623z(); i3++) {
                if (!m12640f(i3).isInitialized()) {
                    this.f23200p = (byte) 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < m12632q(); i4++) {
                if (!m12652b(i4).isInitialized()) {
                    this.f23200p = (byte) 0;
                    return false;
                }
            }
            for (int i5 = 0; i5 < m12628u(); i5++) {
                if (!m12646d(i5).isInitialized()) {
                    this.f23200p = (byte) 0;
                    return false;
                }
            }
            for (int i6 = 0; i6 < m12670B(); i6++) {
                if (!m12637g(i6).isInitialized()) {
                    this.f23200p = (byte) 0;
                    return false;
                }
            }
            if (!m12662J() || m12668D().isInitialized()) {
                this.f23200p = (byte) 1;
                return true;
            }
            this.f23200p = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10298b> mo11677j() {
            return f23188r;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23165e;
            gVar.m11629a(C10298b.class, C10300b.class);
            return gVar;
        }

        /* renamed from: q */
        public int m12632q() {
            return this.f23194j.size();
        }

        /* renamed from: r */
        public List<C10314d> m12631r() {
            return this.f23194j;
        }

        /* renamed from: s */
        public int m12630s() {
            return this.f23192h.size();
        }

        /* renamed from: t */
        public List<C10366n> m12629t() {
            return this.f23192h;
        }

        /* renamed from: u */
        public int m12628u() {
            return this.f23195k.size();
        }

        /* renamed from: v */
        public List<C10301c> m12627v() {
            return this.f23195k;
        }

        /* renamed from: w */
        public int m12626w() {
            return this.f23191g.size();
        }

        /* renamed from: x */
        public List<C10366n> m12625x() {
            return this.f23191g;
        }

        /* renamed from: y */
        public String m12624y() {
            Object obj = this.f23190f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23190f = s;
            }
            return s;
        }

        /* renamed from: z */
        public int m12623z() {
            return this.f23193i.size();
        }
    }

    /* renamed from: h.i.g.k$b0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$b0.class */
    public static final class C10309b0 extends AbstractC10482x implements AbstractC10313c0 {

        /* renamed from: i */
        public static final C10309b0 f23241i = new C10309b0();
        @Deprecated

        /* renamed from: j */
        public static final AbstractC10462s0<C10309b0> f23242j = new C10310a();

        /* renamed from: e */
        public int f23243e;

        /* renamed from: f */
        public volatile Object f23244f;

        /* renamed from: g */
        public C10321d0 f23245g;

        /* renamed from: h */
        public byte f23246h;

        /* renamed from: h.i.g.k$b0$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b0$a.class */
        public static final class C10310a extends AbstractC10235c<C10309b0> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10309b0 mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10309b0(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$b0$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$b0$b.class */
        public static final class C10311b extends AbstractC10482x.AbstractC10484b<C10311b> implements AbstractC10313c0 {

            /* renamed from: e */
            public int f23247e;

            /* renamed from: f */
            public Object f23248f;

            /* renamed from: g */
            public C10321d0 f23249g;

            /* renamed from: h */
            public C10506x0<C10321d0, C10321d0.C10323b, AbstractC10325e0> f23250h;

            public C10311b() {
                this.f23248f = "";
                m12551n();
            }

            public C10311b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23248f = "";
                m12551n();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10309b0 mo11825E() {
                C10309b0 b0Var = new C10309b0(this);
                int i = this.f23247e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                b0Var.f23244f = this.f23248f;
                int i3 = i2;
                if ((i & 2) != 0) {
                    C10506x0<C10321d0, C10321d0.C10323b, AbstractC10325e0> x0Var = this.f23250h;
                    if (x0Var == null) {
                        b0Var.f23245g = this.f23249g;
                    } else {
                        b0Var.f23245g = x0Var.m11583b();
                    }
                    i3 = i2 | 2;
                }
                b0Var.f23243e = i3;
                m11658j();
                return b0Var;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10311b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10309b0.C10311b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$b0> r0 = p081h.p203i.p401g.C10295k.C10309b0.f23242j     // Catch: all -> 0x001c, a0 -> 0x0023
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0023
                    h.i.g.k$b0 r0 = (p081h.p203i.p401g.C10295k.C10309b0) r0     // Catch: all -> 0x001c, a0 -> 0x0023
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$b0$b r0 = r0.m12555a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r8 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x0037
                L_0x0023:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$b0 r0 = (p081h.p203i.p401g.C10295k.C10309b0) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0031
                    throw r0     // Catch: all -> 0x0031
                L_0x0031:
                    r5 = move-exception
                    r0 = r5
                    r8 = r0
                    r0 = r6
                    r5 = r0
                L_0x0037:
                    r0 = r5
                    if (r0 == 0) goto L_0x0041
                    r0 = r4
                    r1 = r5
                    h.i.g.k$b0$b r0 = r0.m12555a(r1)
                L_0x0041:
                    r0 = r8
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10309b0.C10311b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$b0$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10311b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10309b0) {
                    m12555a((C10309b0) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10311b m12555a(C10309b0 b0Var) {
                if (b0Var == C10309b0.m12558u()) {
                    return this;
                }
                if (b0Var.m12560s()) {
                    this.f23247e |= 1;
                    this.f23248f = b0Var.f23244f;
                    m11657k();
                }
                if (b0Var.m12559t()) {
                    m12554a(b0Var.m12561r());
                }
                mo11668b(b0Var.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10311b m12554a(C10321d0 d0Var) {
                C10321d0 d0Var2;
                C10506x0<C10321d0, C10321d0.C10323b, AbstractC10325e0> x0Var = this.f23250h;
                if (x0Var == null) {
                    if ((this.f23247e & 2) == 0 || (d0Var2 = this.f23249g) == null || d0Var2 == C10321d0.m12496w()) {
                        this.f23249g = d0Var;
                    } else {
                        C10321d0.C10323b b = C10321d0.m12499b(this.f23249g);
                        b.m12493a(d0Var);
                        this.f23249g = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(d0Var);
                }
                this.f23247e |= 2;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10311b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10311b mo11668b(C10247f1 f1Var) {
                return (C10311b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10311b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10309b0 mo11818b() {
                return C10309b0.m12558u();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10309b0 build() {
                C10309b0 E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23174n;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10311b clone() {
                return (C10311b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23175o;
                gVar.m11629a(C10309b0.class, C10311b.class);
                return gVar;
            }

            /* renamed from: l */
            public C10321d0 m12553l() {
                C10506x0<C10321d0, C10321d0.C10323b, AbstractC10325e0> x0Var = this.f23250h;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10321d0 d0Var = this.f23249g;
                C10321d0 d0Var2 = d0Var;
                if (d0Var == null) {
                    d0Var2 = C10321d0.m12496w();
                }
                return d0Var2;
            }

            /* renamed from: m */
            public final C10506x0<C10321d0, C10321d0.C10323b, AbstractC10325e0> m12552m() {
                if (this.f23250h == null) {
                    this.f23250h = new C10506x0<>(m12553l(), m11661g(), m11659i());
                    this.f23249g = null;
                }
                return this.f23250h;
            }

            /* renamed from: n */
            public final void m12551n() {
                if (AbstractC10482x.f23816d) {
                    m12552m();
                }
            }
        }

        public C10309b0() {
            this.f23246h = (byte) (-1);
            this.f23244f = "";
        }

        public C10309b0(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 10) {
                                    AbstractC10253g c = hVar.mo12918c();
                                    this.f23243e = 1 | this.f23243e;
                                    this.f23244f = c;
                                } else if (r == 18) {
                                    C10321d0.C10323b f = (this.f23243e & 2) != 0 ? this.f23245g.mo11826f() : null;
                                    this.f23245g = (C10321d0) hVar.mo12921a(C10321d0.f23279i, rVar);
                                    if (f != null) {
                                        f.m12493a(this.f23245g);
                                        this.f23245g = f.mo11825E();
                                    }
                                    this.f23243e |= 2;
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10309b0(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23246h = (byte) (-1);
        }

        /* renamed from: u */
        public static C10309b0 m12558u() {
            return f23241i;
        }

        /* renamed from: v */
        public static final C10418l.C10420b m12557v() {
            return C10295k.f23174n;
        }

        /* renamed from: w */
        public static C10311b m12556w() {
            return f23241i.mo11826f();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10311b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10311b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23243e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23244f);
            }
            if ((this.f23243e & 2) != 0) {
                iVar.mo12808b(2, m12561r());
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10309b0 mo11818b() {
            return f23241i;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10311b mo11827e() {
            return m12556w();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10309b0)) {
                return super.equals(obj);
            }
            C10309b0 b0Var = (C10309b0) obj;
            if (m12560s() != b0Var.m12560s()) {
                return false;
            }
            if ((!m12560s() || m12562q().equals(b0Var.m12562q())) && m12559t() == b0Var.m12559t()) {
                return (!m12559t() || m12561r().equals(b0Var.m12561r())) && this.f23817c.equals(b0Var.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10311b mo11826f() {
            C10311b bVar;
            if (this == f23241i) {
                bVar = new C10311b();
            } else {
                bVar = new C10311b();
                bVar.m12555a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f23243e & 1) != 0) {
                i2 = 0 + AbstractC10482x.m11694a(1, this.f23244f);
            }
            int i3 = i2;
            if ((this.f23243e & 2) != 0) {
                i3 = i2 + AbstractC10274i.m12840f(2, m12561r());
            }
            int h = i3 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12557v().hashCode();
            int i2 = hashCode;
            if (m12560s()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12562q().hashCode();
            }
            int i3 = i2;
            if (m12559t()) {
                i3 = (((i2 * 37) + 2) * 53) + m12561r().hashCode();
            }
            int hashCode2 = (i3 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23246h;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m12559t() || m12561r().isInitialized()) {
                this.f23246h = (byte) 1;
                return true;
            }
            this.f23246h = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10309b0> mo11677j() {
            return f23242j;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23175o;
            gVar.m11629a(C10309b0.class, C10311b.class);
            return gVar;
        }

        /* renamed from: q */
        public String m12562q() {
            Object obj = this.f23244f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23244f = s;
            }
            return s;
        }

        /* renamed from: r */
        public C10321d0 m12561r() {
            C10321d0 d0Var = this.f23245g;
            C10321d0 d0Var2 = d0Var;
            if (d0Var == null) {
                d0Var2 = C10321d0.m12496w();
            }
            return d0Var2;
        }

        /* renamed from: s */
        public boolean m12560s() {
            boolean z = true;
            if ((this.f23243e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: t */
        public boolean m12559t() {
            return (this.f23243e & 2) != 0;
        }
    }

    /* renamed from: h.i.g.k$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$c.class */
    public interface AbstractC10312c extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$c0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$c0.class */
    public interface AbstractC10313c0 extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$d.class */
    public static final class C10314d extends AbstractC10482x implements AbstractC10324e {

        /* renamed from: l */
        public static final C10314d f23251l = new C10314d();
        @Deprecated

        /* renamed from: m */
        public static final AbstractC10462s0<C10314d> f23252m = new C10315a();

        /* renamed from: e */
        public int f23253e;

        /* renamed from: f */
        public volatile Object f23254f;

        /* renamed from: g */
        public List<C10334h> f23255g;

        /* renamed from: h */
        public C10326f f23256h;

        /* renamed from: i */
        public List<C10317c> f23257i;

        /* renamed from: j */
        public AbstractC10243e0 f23258j;

        /* renamed from: k */
        public byte f23259k;

        /* renamed from: h.i.g.k$d$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$d$a.class */
        public static final class C10315a extends AbstractC10235c<C10314d> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10314d mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10314d(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$d$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$d$b.class */
        public static final class C10316b extends AbstractC10482x.AbstractC10484b<C10316b> implements AbstractC10324e {

            /* renamed from: e */
            public int f23260e;

            /* renamed from: f */
            public Object f23261f;

            /* renamed from: g */
            public List<C10334h> f23262g;

            /* renamed from: h */
            public C10478w0<C10334h, C10334h.C10336b, AbstractC10340i> f23263h;

            /* renamed from: i */
            public C10326f f23264i;

            /* renamed from: j */
            public C10506x0<C10326f, C10326f.C10328b, AbstractC10332g> f23265j;

            /* renamed from: k */
            public List<C10317c> f23266k;

            /* renamed from: l */
            public C10478w0<C10317c, C10317c.C10319b, AbstractC10320d> f23267l;

            /* renamed from: m */
            public AbstractC10243e0 f23268m;

            public C10316b() {
                this.f23261f = "";
                this.f23262g = Collections.emptyList();
                this.f23266k = Collections.emptyList();
                this.f23268m = C10240d0.f23071d;
                m12517s();
            }

            public C10316b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23261f = "";
                this.f23262g = Collections.emptyList();
                this.f23266k = Collections.emptyList();
                this.f23268m = C10240d0.f23071d;
                m12517s();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10314d mo11825E() {
                C10314d dVar = new C10314d(this);
                int i = this.f23260e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                dVar.f23254f = this.f23261f;
                C10478w0<C10334h, C10334h.C10336b, AbstractC10340i> w0Var = this.f23263h;
                if (w0Var == null) {
                    if ((this.f23260e & 2) != 0) {
                        this.f23262g = Collections.unmodifiableList(this.f23262g);
                        this.f23260e &= -3;
                    }
                    dVar.f23255g = this.f23262g;
                } else {
                    dVar.f23255g = w0Var.m11704b();
                }
                int i3 = i2;
                if ((i & 4) != 0) {
                    C10506x0<C10326f, C10326f.C10328b, AbstractC10332g> x0Var = this.f23265j;
                    if (x0Var == null) {
                        dVar.f23256h = this.f23264i;
                    } else {
                        dVar.f23256h = x0Var.m11583b();
                    }
                    i3 = i2 | 2;
                }
                C10478w0<C10317c, C10317c.C10319b, AbstractC10320d> w0Var2 = this.f23267l;
                if (w0Var2 == null) {
                    if ((this.f23260e & 8) != 0) {
                        this.f23266k = Collections.unmodifiableList(this.f23266k);
                        this.f23260e &= -9;
                    }
                    dVar.f23257i = this.f23266k;
                } else {
                    dVar.f23257i = w0Var2.m11704b();
                }
                if ((this.f23260e & 16) != 0) {
                    this.f23268m = this.f23268m.mo12887o();
                    this.f23260e &= -17;
                }
                dVar.f23258j = this.f23268m;
                dVar.f23253e = i3;
                m11658j();
                return dVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10316b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10314d.C10316b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$d> r0 = p081h.p203i.p401g.C10295k.C10314d.f23252m     // Catch: all -> 0x001c, a0 -> 0x0024
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0024
                    h.i.g.k$d r0 = (p081h.p203i.p401g.C10295k.C10314d) r0     // Catch: all -> 0x001c, a0 -> 0x0024
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$d$b r0 = r0.m12526a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L_0x0035
                L_0x0024:
                    r6 = move-exception
                    r0 = r6
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$d r0 = (p081h.p203i.p401g.C10295k.C10314d) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0032
                    throw r0     // Catch: all -> 0x0032
                L_0x0032:
                    r7 = move-exception
                    r0 = r5
                    r6 = r0
                L_0x0035:
                    r0 = r6
                    if (r0 == 0) goto L_0x003f
                    r0 = r4
                    r1 = r6
                    h.i.g.k$d$b r0 = r0.m12526a(r1)
                L_0x003f:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10314d.C10316b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$d$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10316b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10314d) {
                    m12526a((C10314d) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10316b m12526a(C10314d dVar) {
                if (dVar == C10314d.m12550A()) {
                    return this;
                }
                if (dVar.m12528y()) {
                    this.f23260e |= 1;
                    this.f23261f = dVar.f23254f;
                    m11657k();
                }
                C10478w0<C10317c, C10317c.C10319b, AbstractC10320d> w0Var = null;
                if (this.f23263h == null) {
                    if (!dVar.f23255g.isEmpty()) {
                        if (this.f23262g.isEmpty()) {
                            this.f23262g = dVar.f23255g;
                            this.f23260e &= -3;
                        } else {
                            m12522n();
                            this.f23262g.addAll(dVar.f23255g);
                        }
                        m11657k();
                    }
                } else if (!dVar.f23255g.isEmpty()) {
                    if (this.f23263h.m11700f()) {
                        this.f23263h.m11703c();
                        this.f23263h = null;
                        this.f23262g = dVar.f23255g;
                        this.f23260e &= -3;
                        this.f23263h = AbstractC10482x.f23816d ? m12518r() : null;
                    } else {
                        this.f23263h.m11705a(dVar.f23255g);
                    }
                }
                if (dVar.m12527z()) {
                    m12525a(dVar.m12535r());
                }
                if (this.f23267l == null) {
                    if (!dVar.f23257i.isEmpty()) {
                        if (this.f23266k.isEmpty()) {
                            this.f23266k = dVar.f23257i;
                            this.f23260e &= -9;
                        } else {
                            m12523m();
                            this.f23266k.addAll(dVar.f23257i);
                        }
                        m11657k();
                    }
                } else if (!dVar.f23257i.isEmpty()) {
                    if (this.f23267l.m11700f()) {
                        this.f23267l.m11703c();
                        this.f23267l = null;
                        this.f23266k = dVar.f23257i;
                        this.f23260e &= -9;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12519q();
                        }
                        this.f23267l = w0Var;
                    } else {
                        this.f23267l.m11705a(dVar.f23257i);
                    }
                }
                if (!dVar.f23258j.isEmpty()) {
                    if (this.f23268m.isEmpty()) {
                        this.f23268m = dVar.f23258j;
                        this.f23260e &= -17;
                    } else {
                        m12524l();
                        this.f23268m.addAll(dVar.f23258j);
                    }
                    m11657k();
                }
                mo11668b(dVar.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10316b m12525a(C10326f fVar) {
                C10326f fVar2;
                C10506x0<C10326f, C10326f.C10328b, AbstractC10332g> x0Var = this.f23265j;
                if (x0Var == null) {
                    if ((this.f23260e & 4) == 0 || (fVar2 = this.f23264i) == null || fVar2 == C10326f.m12489A()) {
                        this.f23264i = fVar;
                    } else {
                        C10326f.C10328b b = C10326f.m12481b(this.f23264i);
                        b.m12473a(fVar);
                        this.f23264i = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(fVar);
                }
                this.f23260e |= 4;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10316b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10316b mo11668b(C10247f1 f1Var) {
                return (C10316b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10316b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10314d mo11818b() {
                return C10314d.m12550A();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10314d build() {
                C10314d E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23176p;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10316b clone() {
                return (C10316b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23177q;
                gVar.m11629a(C10314d.class, C10316b.class);
                return gVar;
            }

            /* renamed from: l */
            public final void m12524l() {
                if ((this.f23260e & 16) == 0) {
                    this.f23268m = new C10240d0(this.f23268m);
                    this.f23260e |= 16;
                }
            }

            /* renamed from: m */
            public final void m12523m() {
                if ((this.f23260e & 8) == 0) {
                    this.f23266k = new ArrayList(this.f23266k);
                    this.f23260e |= 8;
                }
            }

            /* renamed from: n */
            public final void m12522n() {
                if ((this.f23260e & 2) == 0) {
                    this.f23262g = new ArrayList(this.f23262g);
                    this.f23260e |= 2;
                }
            }

            /* renamed from: o */
            public C10326f m12521o() {
                C10506x0<C10326f, C10326f.C10328b, AbstractC10332g> x0Var = this.f23265j;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10326f fVar = this.f23264i;
                C10326f fVar2 = fVar;
                if (fVar == null) {
                    fVar2 = C10326f.m12489A();
                }
                return fVar2;
            }

            /* renamed from: p */
            public final C10506x0<C10326f, C10326f.C10328b, AbstractC10332g> m12520p() {
                if (this.f23265j == null) {
                    this.f23265j = new C10506x0<>(m12521o(), m11661g(), m11659i());
                    this.f23264i = null;
                }
                return this.f23265j;
            }

            /* renamed from: q */
            public final C10478w0<C10317c, C10317c.C10319b, AbstractC10320d> m12519q() {
                if (this.f23267l == null) {
                    this.f23267l = new C10478w0<>(this.f23266k, (this.f23260e & 8) != 0, m11661g(), m11659i());
                    this.f23266k = null;
                }
                return this.f23267l;
            }

            /* renamed from: r */
            public final C10478w0<C10334h, C10334h.C10336b, AbstractC10340i> m12518r() {
                if (this.f23263h == null) {
                    this.f23263h = new C10478w0<>(this.f23262g, (this.f23260e & 2) != 0, m11661g(), m11659i());
                    this.f23262g = null;
                }
                return this.f23263h;
            }

            /* renamed from: s */
            public final void m12517s() {
                if (AbstractC10482x.f23816d) {
                    m12518r();
                    m12520p();
                    m12519q();
                }
            }
        }

        /* renamed from: h.i.g.k$d$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$d$c.class */
        public static final class C10317c extends AbstractC10482x implements AbstractC10320d {

            /* renamed from: i */
            public static final C10317c f23269i = new C10317c();
            @Deprecated

            /* renamed from: j */
            public static final AbstractC10462s0<C10317c> f23270j = new C10318a();

            /* renamed from: e */
            public int f23271e;

            /* renamed from: f */
            public int f23272f;

            /* renamed from: g */
            public int f23273g;

            /* renamed from: h */
            public byte f23274h;

            /* renamed from: h.i.g.k$d$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$d$c$a.class */
            public static final class C10318a extends AbstractC10235c<C10317c> {
                @Override // p081h.p203i.p401g.AbstractC10462s0
                /* renamed from: a */
                public C10317c mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                    return new C10317c(hVar, rVar);
                }
            }

            /* renamed from: h.i.g.k$d$c$b */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$d$c$b.class */
            public static final class C10319b extends AbstractC10482x.AbstractC10484b<C10319b> implements AbstractC10320d {

                /* renamed from: e */
                public int f23275e;

                /* renamed from: f */
                public int f23276f;

                /* renamed from: g */
                public int f23277g;

                public C10319b() {
                    m12503l();
                }

                public C10319b(AbstractC10482x.AbstractC10486c cVar) {
                    super(cVar);
                    m12503l();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: E */
                public C10317c mo11825E() {
                    int i;
                    C10317c cVar = new C10317c(this);
                    int i2 = this.f23275e;
                    if ((i2 & 1) != 0) {
                        cVar.f23272f = this.f23276f;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    int i3 = i;
                    if ((i2 & 2) != 0) {
                        cVar.f23273g = this.f23277g;
                        i3 = i | 2;
                    }
                    cVar.f23271e = i3;
                    m11658j();
                    return cVar;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public final C10319b mo11672a(C10247f1 f1Var) {
                    super.mo11672a(f1Var);
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public p081h.p203i.p401g.C10295k.C10314d.C10317c.C10319b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        h.i.g.s0<h.i.g.k$d$c> r0 = p081h.p203i.p401g.C10295k.C10314d.C10317c.f23270j     // Catch: all -> 0x001c, a0 -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                        h.i.g.k$d$c r0 = (p081h.p203i.p401g.C10295k.C10314d.C10317c) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        h.i.g.k$d$c$b r0 = r0.m12506a(r1)
                    L_0x001a:
                        r0 = r4
                        return r0
                    L_0x001c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L_0x0031
                    L_0x0022:
                        r5 = move-exception
                        r0 = r5
                        h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                        h.i.g.k$d$c r0 = (p081h.p203i.p401g.C10295k.C10314d.C10317c) r0     // Catch: all -> 0x001c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                        throw r0     // Catch: all -> 0x0030
                    L_0x0030:
                        r5 = move-exception
                    L_0x0031:
                        r0 = r6
                        if (r0 == 0) goto L_0x003b
                        r0 = r4
                        r1 = r6
                        h.i.g.k$d$c$b r0 = r0.m12506a(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10314d.C10317c.C10319b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$d$c$b");
                }

                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10319b mo11824a(AbstractC10287j0 j0Var) {
                    if (j0Var instanceof C10317c) {
                        m12506a((C10317c) j0Var);
                        return this;
                    }
                    super.mo11824a(j0Var);
                    return this;
                }

                /* renamed from: a */
                public C10319b m12506a(C10317c cVar) {
                    if (cVar == C10317c.m12509u()) {
                        return this;
                    }
                    if (cVar.m12510t()) {
                        m12504d(cVar.m12512r());
                    }
                    if (cVar.m12511s()) {
                        m12505c(cVar.m12513q());
                    }
                    mo11668b(cVar.f23817c);
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10319b mo11655a(C10418l.C10428g gVar, Object obj) {
                    super.mo11655a(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                /* renamed from: b */
                public final C10319b mo11668b(C10247f1 f1Var) {
                    return (C10319b) super.mo11668b(f1Var);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: b */
                public C10319b mo11652b(C10418l.C10428g gVar, Object obj) {
                    super.mo11652b(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: b */
                public C10317c mo11818b() {
                    return C10317c.m12509u();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                public C10317c build() {
                    C10317c E = mo11825E();
                    if (E.isInitialized()) {
                        return E;
                    }
                    throw AbstractC10219a.AbstractC10220a.m13080b(E);
                }

                /* renamed from: c */
                public C10319b m12505c(int i) {
                    this.f23275e |= 2;
                    this.f23277g = i;
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: c */
                public C10418l.C10420b mo11666c() {
                    return C10295k.f23178r;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                public C10319b clone() {
                    return (C10319b) super.clone();
                }

                /* renamed from: d */
                public C10319b m12504d(int i) {
                    this.f23275e |= 1;
                    this.f23276f = i;
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
                /* renamed from: h */
                public AbstractC10482x.C10491g mo11660h() {
                    AbstractC10482x.C10491g gVar = C10295k.f23179s;
                    gVar.m11629a(C10317c.class, C10319b.class);
                    return gVar;
                }

                /* renamed from: l */
                public final void m12503l() {
                }
            }

            public C10317c() {
                this.f23274h = (byte) (-1);
            }

            public C10317c(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                this();
                if (rVar != null) {
                    C10247f1.C10249b d = C10247f1.m13019d();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 8) {
                                        this.f23271e |= 1;
                                        this.f23272f = hVar.mo12908i();
                                    } else if (r == 16) {
                                        this.f23271e |= 2;
                                        this.f23273g = hVar.mo12908i();
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e) {
                                e.m13078a(this);
                                throw e;
                            } catch (IOException e2) {
                                C10222a0 a0Var = new C10222a0(e2);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } finally {
                            this.f23817c = d.build();
                            mo11641n();
                        }
                    }
                    return;
                }
                throw new NullPointerException();
            }

            public C10317c(AbstractC10482x.AbstractC10484b<?> bVar) {
                super(bVar);
                this.f23274h = (byte) (-1);
            }

            /* renamed from: u */
            public static C10317c m12509u() {
                return f23269i;
            }

            /* renamed from: v */
            public static final C10418l.C10420b m12508v() {
                return C10295k.f23178r;
            }

            /* renamed from: w */
            public static C10319b m12507w() {
                return f23269i.mo11826f();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: a */
            public C10319b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
                return new C10319b(cVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: a */
            public void mo11692a(AbstractC10274i iVar) throws IOException {
                if ((this.f23271e & 1) != 0) {
                    iVar.mo12804c(1, this.f23272f);
                }
                if ((this.f23271e & 2) != 0) {
                    iVar.mo12804c(2, this.f23273g);
                }
                this.f23817c.mo11692a(iVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10317c mo11818b() {
                return f23269i;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: d */
            public final C10247f1 mo11664d() {
                return this.f23817c;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: e */
            public C10319b mo11827e() {
                return m12507w();
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C10317c)) {
                    return super.equals(obj);
                }
                C10317c cVar = (C10317c) obj;
                if (m12510t() != cVar.m12510t()) {
                    return false;
                }
                if ((!m12510t() || m12512r() == cVar.m12512r()) && m12511s() == cVar.m12511s()) {
                    return (!m12511s() || m12513q() == cVar.m12513q()) && this.f23817c.equals(cVar.f23817c);
                }
                return false;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: f */
            public C10319b mo11826f() {
                C10319b bVar;
                if (this == f23269i) {
                    bVar = new C10319b();
                } else {
                    bVar = new C10319b();
                    bVar.m12506a(this);
                }
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: h */
            public int mo11678h() {
                int i = this.f23054b;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f23271e & 1) != 0) {
                    i2 = 0 + AbstractC10274i.m12838g(1, this.f23272f);
                }
                int i3 = i2;
                if ((this.f23271e & 2) != 0) {
                    i3 = i2 + AbstractC10274i.m12838g(2, this.f23273g);
                }
                int h = i3 + this.f23817c.mo11678h();
                this.f23054b = h;
                return h;
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public int hashCode() {
                int i = this.f23058a;
                if (i != 0) {
                    return i;
                }
                int hashCode = 779 + m12508v().hashCode();
                int i2 = hashCode;
                if (m12510t()) {
                    i2 = (((hashCode * 37) + 1) * 53) + m12512r();
                }
                int i3 = i2;
                if (m12511s()) {
                    i3 = (((i2 * 37) + 2) * 53) + m12513q();
                }
                int hashCode2 = (i3 * 29) + this.f23817c.hashCode();
                this.f23058a = hashCode2;
                return hashCode2;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
            public final boolean isInitialized() {
                byte b = this.f23274h;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.f23274h = (byte) 1;
                return true;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: j */
            public AbstractC10462s0<C10317c> mo11677j() {
                return f23270j;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: m */
            public AbstractC10482x.C10491g mo11676m() {
                AbstractC10482x.C10491g gVar = C10295k.f23179s;
                gVar.m11629a(C10317c.class, C10319b.class);
                return gVar;
            }

            /* renamed from: q */
            public int m12513q() {
                return this.f23273g;
            }

            /* renamed from: r */
            public int m12512r() {
                return this.f23272f;
            }

            /* renamed from: s */
            public boolean m12511s() {
                return (this.f23271e & 2) != 0;
            }

            /* renamed from: t */
            public boolean m12510t() {
                boolean z = true;
                if ((this.f23271e & 1) == 0) {
                    z = false;
                }
                return z;
            }
        }

        /* renamed from: h.i.g.k$d$d */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$d$d.class */
        public interface AbstractC10320d extends AbstractC10444n0 {
        }

        public C10314d() {
            this.f23259k = (byte) (-1);
            this.f23254f = "";
            this.f23255g = Collections.emptyList();
            this.f23257i = Collections.emptyList();
            this.f23258j = C10240d0.f23071d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10314d(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 10) {
                                    AbstractC10253g c = hVar.mo12918c();
                                    this.f23253e = 1 | this.f23253e;
                                    this.f23254f = c;
                                } else if (r == 18) {
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.f23255g = new ArrayList();
                                        i |= 2;
                                    }
                                    this.f23255g.add(hVar.mo12921a(C10334h.f23311k, rVar));
                                } else if (r == 26) {
                                    C10326f.C10328b f = (this.f23253e & 2) != 0 ? this.f23256h.mo11826f() : null;
                                    this.f23256h = (C10326f) hVar.mo12921a(C10326f.f23286l, rVar);
                                    if (f != null) {
                                        f.m12473a(this.f23256h);
                                        this.f23256h = f.mo11825E();
                                    }
                                    this.f23253e |= 2;
                                } else if (r == 34) {
                                    i = i;
                                    if ((i & 8) == 0) {
                                        this.f23257i = new ArrayList();
                                        i |= 8;
                                    }
                                    this.f23257i.add(hVar.mo12921a(C10317c.f23270j, rVar));
                                } else if (r == 42) {
                                    AbstractC10253g c2 = hVar.mo12918c();
                                    i = i;
                                    if ((i & 16) == 0) {
                                        this.f23258j = new C10240d0();
                                        i |= 16;
                                    }
                                    this.f23258j.mo12889b(c2);
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 2) != 0) {
                            this.f23255g = Collections.unmodifiableList(this.f23255g);
                        }
                        if ((i & 8) != 0) {
                            this.f23257i = Collections.unmodifiableList(this.f23257i);
                        }
                        if ((i & 16) != 0) {
                            this.f23258j = this.f23258j.mo12887o();
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10314d(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23259k = (byte) (-1);
        }

        /* renamed from: A */
        public static C10314d m12550A() {
            return f23251l;
        }

        /* renamed from: B */
        public static final C10418l.C10420b m12549B() {
            return C10295k.f23176p;
        }

        /* renamed from: C */
        public static C10316b m12548C() {
            return f23251l.mo11826f();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10316b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10316b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23253e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23254f);
            }
            for (int i = 0; i < this.f23255g.size(); i++) {
                iVar.mo12808b(2, this.f23255g.get(i));
            }
            if ((this.f23253e & 2) != 0) {
                iVar.mo12808b(3, m12535r());
            }
            for (int i2 = 0; i2 < this.f23257i.size(); i2++) {
                iVar.mo12808b(4, this.f23257i.get(i2));
            }
            for (int i3 = 0; i3 < this.f23258j.size(); i3++) {
                AbstractC10482x.m11691a(iVar, 5, this.f23258j.mo12891a(i3));
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10314d mo11818b() {
            return f23251l;
        }

        /* renamed from: b */
        public C10334h m12541b(int i) {
            return this.f23255g.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10316b mo11827e() {
            return m12548C();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10314d)) {
                return super.equals(obj);
            }
            C10314d dVar = (C10314d) obj;
            if (m12528y() != dVar.m12528y()) {
                return false;
            }
            if ((!m12528y() || m12536q().equals(dVar.m12536q())) && m12529x().equals(dVar.m12529x()) && m12527z() == dVar.m12527z()) {
                return (!m12527z() || m12535r().equals(dVar.m12535r())) && m12531v().equals(dVar.m12531v()) && m12533t().equals(dVar.m12533t()) && this.f23817c.equals(dVar.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10316b mo11826f() {
            C10316b bVar;
            if (this == f23251l) {
                bVar = new C10316b();
            } else {
                bVar = new C10316b();
                bVar.m12526a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int a = (this.f23253e & 1) != 0 ? AbstractC10482x.m11694a(1, this.f23254f) + 0 : 0;
            for (int i2 = 0; i2 < this.f23255g.size(); i2++) {
                a += AbstractC10274i.m12840f(2, this.f23255g.get(i2));
            }
            int i3 = a;
            if ((this.f23253e & 2) != 0) {
                i3 = a + AbstractC10274i.m12840f(3, m12535r());
            }
            for (int i4 = 0; i4 < this.f23257i.size(); i4++) {
                i3 += AbstractC10274i.m12840f(4, this.f23257i.get(i4));
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.f23258j.size(); i6++) {
                i5 += AbstractC10482x.m11679c(this.f23258j.mo12891a(i6));
            }
            int size = i3 + i5 + (m12533t().size() * 1) + this.f23817c.mo11678h();
            this.f23054b = size;
            return size;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12549B().hashCode();
            int i2 = hashCode;
            if (m12528y()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12536q().hashCode();
            }
            int i3 = i2;
            if (m12530w() > 0) {
                i3 = (((i2 * 37) + 2) * 53) + m12529x().hashCode();
            }
            int i4 = i3;
            if (m12527z()) {
                i4 = (((i3 * 37) + 3) * 53) + m12535r().hashCode();
            }
            int i5 = i4;
            if (m12532u() > 0) {
                i5 = (((i4 * 37) + 4) * 53) + m12531v().hashCode();
            }
            int i6 = i5;
            if (m12534s() > 0) {
                i6 = (((i5 * 37) + 5) * 53) + m12533t().hashCode();
            }
            int hashCode2 = (i6 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23259k;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12530w(); i++) {
                if (!m12541b(i).isInitialized()) {
                    this.f23259k = (byte) 0;
                    return false;
                }
            }
            if (!m12527z() || m12535r().isInitialized()) {
                this.f23259k = (byte) 1;
                return true;
            }
            this.f23259k = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10314d> mo11677j() {
            return f23252m;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23177q;
            gVar.m11629a(C10314d.class, C10316b.class);
            return gVar;
        }

        /* renamed from: q */
        public String m12536q() {
            Object obj = this.f23254f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23254f = s;
            }
            return s;
        }

        /* renamed from: r */
        public C10326f m12535r() {
            C10326f fVar = this.f23256h;
            C10326f fVar2 = fVar;
            if (fVar == null) {
                fVar2 = C10326f.m12489A();
            }
            return fVar2;
        }

        /* renamed from: s */
        public int m12534s() {
            return this.f23258j.size();
        }

        /* renamed from: t */
        public AbstractC10476v0 m12533t() {
            return this.f23258j;
        }

        /* renamed from: u */
        public int m12532u() {
            return this.f23257i.size();
        }

        /* renamed from: v */
        public List<C10317c> m12531v() {
            return this.f23257i;
        }

        /* renamed from: w */
        public int m12530w() {
            return this.f23255g.size();
        }

        /* renamed from: x */
        public List<C10334h> m12529x() {
            return this.f23255g;
        }

        /* renamed from: y */
        public boolean m12528y() {
            boolean z = true;
            if ((this.f23253e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: z */
        public boolean m12527z() {
            return (this.f23253e & 2) != 0;
        }
    }

    /* renamed from: h.i.g.k$d0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$d0.class */
    public static final class C10321d0 extends AbstractC10482x.AbstractC10488e<C10321d0> implements AbstractC10325e0 {

        /* renamed from: h */
        public static final C10321d0 f23278h = new C10321d0();
        @Deprecated

        /* renamed from: i */
        public static final AbstractC10462s0<C10321d0> f23279i = new C10322a();

        /* renamed from: f */
        public List<C10357l0> f23280f;

        /* renamed from: g */
        public byte f23281g;

        /* renamed from: h.i.g.k$d0$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$d0$a.class */
        public static final class C10322a extends AbstractC10235c<C10321d0> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10321d0 mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10321d0(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$d0$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$d0$b.class */
        public static final class C10323b extends AbstractC10482x.AbstractC10487d<C10321d0, C10323b> implements AbstractC10325e0 {

            /* renamed from: f */
            public int f23282f;

            /* renamed from: g */
            public List<C10357l0> f23283g;

            /* renamed from: h */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23284h;

            public C10323b() {
                this.f23283g = Collections.emptyList();
                m12490p();
            }

            public C10323b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23283g = Collections.emptyList();
                m12490p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10321d0 mo11825E() {
                C10321d0 d0Var = new C10321d0(this);
                int i = this.f23282f;
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23284h;
                if (w0Var == null) {
                    if ((i & 1) != 0) {
                        this.f23283g = Collections.unmodifiableList(this.f23283g);
                        this.f23282f &= -2;
                    }
                    d0Var.f23280f = this.f23283g;
                } else {
                    d0Var.f23280f = w0Var.m11704b();
                }
                m11658j();
                return d0Var;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10323b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10321d0.C10323b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$d0> r0 = p081h.p203i.p401g.C10295k.C10321d0.f23279i     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$d0 r0 = (p081h.p203i.p401g.C10295k.C10321d0) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$d0$b r0 = r0.m12493a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x0031
                L_0x0022:
                    r6 = move-exception
                    r0 = r6
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$d0 r0 = (p081h.p203i.p401g.C10295k.C10321d0) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r6 = move-exception
                L_0x0031:
                    r0 = r5
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r5
                    h.i.g.k$d0$b r0 = r0.m12493a(r1)
                L_0x003b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10321d0.C10323b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$d0$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10323b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10321d0) {
                    m12493a((C10321d0) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10323b m12493a(C10321d0 d0Var) {
                if (d0Var == C10321d0.m12496w()) {
                    return this;
                }
                if (this.f23284h == null) {
                    if (!d0Var.f23280f.isEmpty()) {
                        if (this.f23283g.isEmpty()) {
                            this.f23283g = d0Var.f23280f;
                            this.f23282f &= -2;
                        } else {
                            m12492n();
                            this.f23283g.addAll(d0Var.f23280f);
                        }
                        m11657k();
                    }
                } else if (!d0Var.f23280f.isEmpty()) {
                    if (this.f23284h.m11700f()) {
                        this.f23284h.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23284h = null;
                        this.f23283g = d0Var.f23280f;
                        this.f23282f &= -2;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12491o();
                        }
                        this.f23284h = w0Var;
                    } else {
                        this.f23284h.m11705a(d0Var.f23280f);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) d0Var);
                mo11668b(d0Var.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10323b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10323b) super.mo11655a(gVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10323b mo11668b(C10247f1 f1Var) {
                return (C10323b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10323b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10323b) super.mo11652b(gVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10321d0 mo11818b() {
                return C10321d0.m12496w();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10321d0 build() {
                C10321d0 E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23140F;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10323b clone() {
                return (C10323b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23141G;
                gVar.m11629a(C10321d0.class, C10323b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m12492n() {
                if ((this.f23282f & 1) == 0) {
                    this.f23283g = new ArrayList(this.f23283g);
                    this.f23282f |= 1;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m12491o() {
                if (this.f23284h == null) {
                    List<C10357l0> list = this.f23283g;
                    boolean z = true;
                    if ((this.f23282f & 1) == 0) {
                        z = false;
                    }
                    this.f23284h = new C10478w0<>(list, z, m11661g(), m11659i());
                    this.f23283g = null;
                }
                return this.f23284h;
            }

            /* renamed from: p */
            public final void m12490p() {
                if (AbstractC10482x.f23816d) {
                    m12491o();
                }
            }
        }

        public C10321d0() {
            this.f23281g = (byte) (-1);
            this.f23280f = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10321d0(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 7994) {
                                        z2 = z2;
                                        if (!z2 || !true) {
                                            this.f23280f = new ArrayList();
                                            z2 |= true;
                                        }
                                        this.f23280f.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (IOException e) {
                                C10222a0 a0Var = new C10222a0(e);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } catch (C10222a0 e2) {
                            e2.m13078a(this);
                            throw e2;
                        }
                    } finally {
                        if (z2 && true) {
                            this.f23280f = Collections.unmodifiableList(this.f23280f);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10321d0(AbstractC10482x.AbstractC10487d<C10321d0, ?> dVar) {
            super(dVar);
            this.f23281g = (byte) (-1);
        }

        /* renamed from: b */
        public static C10323b m12499b(C10321d0 d0Var) {
            C10323b f = f23278h.mo11826f();
            f.m12493a(d0Var);
            return f;
        }

        /* renamed from: w */
        public static C10321d0 m12496w() {
            return f23278h;
        }

        /* renamed from: x */
        public static final C10418l.C10420b m12495x() {
            return C10295k.f23140F;
        }

        /* renamed from: y */
        public static C10323b m12494y() {
            return f23278h.mo11826f();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10323b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10323b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            for (int i = 0; i < this.f23280f.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23280f.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10321d0 mo11818b() {
            return f23278h;
        }

        /* renamed from: b */
        public C10357l0 m12500b(int i) {
            return this.f23280f.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10323b mo11827e() {
            return m12494y();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10321d0)) {
                return super.equals(obj);
            }
            C10321d0 d0Var = (C10321d0) obj;
            return m12497v().equals(d0Var.m12497v()) && this.f23817c.equals(d0Var.f23817c) && m11638s().equals(d0Var.m11638s());
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10323b mo11826f() {
            C10323b bVar;
            if (this == f23278h) {
                bVar = new C10323b();
            } else {
                bVar = new C10323b();
                bVar.m12493a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f23280f.size(); i3++) {
                i2 += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23280f.get(i3));
            }
            int r = i2 + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12495x().hashCode();
            int i2 = hashCode;
            if (m12498u() > 0) {
                i2 = (((hashCode * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m12497v().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i2, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23281g;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12498u(); i++) {
                if (!m12500b(i).isInitialized()) {
                    this.f23281g = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23281g = (byte) 0;
                return false;
            }
            this.f23281g = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10321d0> mo11677j() {
            return f23279i;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23141G;
            gVar.m11629a(C10321d0.class, C10323b.class);
            return gVar;
        }

        /* renamed from: u */
        public int m12498u() {
            return this.f23280f.size();
        }

        /* renamed from: v */
        public List<C10357l0> m12497v() {
            return this.f23280f;
        }
    }

    /* renamed from: h.i.g.k$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$e.class */
    public interface AbstractC10324e extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$e0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$e0.class */
    public interface AbstractC10325e0 extends AbstractC10482x.AbstractC10490f<C10321d0> {
    }

    /* renamed from: h.i.g.k$f */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$f.class */
    public static final class C10326f extends AbstractC10482x.AbstractC10488e<C10326f> implements AbstractC10332g {

        /* renamed from: k */
        public static final C10326f f23285k = new C10326f();
        @Deprecated

        /* renamed from: l */
        public static final AbstractC10462s0<C10326f> f23286l = new C10327a();

        /* renamed from: f */
        public int f23287f;

        /* renamed from: g */
        public boolean f23288g;

        /* renamed from: h */
        public boolean f23289h;

        /* renamed from: i */
        public List<C10357l0> f23290i;

        /* renamed from: j */
        public byte f23291j;

        /* renamed from: h.i.g.k$f$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$f$a.class */
        public static final class C10327a extends AbstractC10235c<C10326f> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10326f mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10326f(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$f$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$f$b.class */
        public static final class C10328b extends AbstractC10482x.AbstractC10487d<C10326f, C10328b> implements AbstractC10332g {

            /* renamed from: f */
            public int f23292f;

            /* renamed from: g */
            public boolean f23293g;

            /* renamed from: h */
            public boolean f23294h;

            /* renamed from: i */
            public List<C10357l0> f23295i;

            /* renamed from: j */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23296j;

            public C10328b() {
                this.f23295i = Collections.emptyList();
                m12468p();
            }

            public C10328b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23295i = Collections.emptyList();
                m12468p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10326f mo11825E() {
                int i;
                C10326f fVar = new C10326f(this);
                int i2 = this.f23292f;
                if ((i2 & 1) != 0) {
                    fVar.f23288g = this.f23293g;
                    i = 1;
                } else {
                    i = 0;
                }
                int i3 = i;
                if ((i2 & 2) != 0) {
                    fVar.f23289h = this.f23294h;
                    i3 = i | 2;
                }
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23296j;
                if (w0Var == null) {
                    if ((this.f23292f & 4) != 0) {
                        this.f23295i = Collections.unmodifiableList(this.f23295i);
                        this.f23292f &= -5;
                    }
                    fVar.f23290i = this.f23295i;
                } else {
                    fVar.f23290i = w0Var.m11704b();
                }
                fVar.f23287f = i3;
                m11658j();
                return fVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10328b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10326f.C10328b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$f> r0 = p081h.p203i.p401g.C10295k.C10326f.f23286l     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$f r0 = (p081h.p203i.p401g.C10295k.C10326f) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$f$b r0 = r0.m12473a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x0031
                L_0x0022:
                    r6 = move-exception
                    r0 = r6
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$f r0 = (p081h.p203i.p401g.C10295k.C10326f) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r6 = move-exception
                L_0x0031:
                    r0 = r5
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r5
                    h.i.g.k$f$b r0 = r0.m12473a(r1)
                L_0x003b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10326f.C10328b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$f$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10328b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10326f) {
                    m12473a((C10326f) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10328b m12473a(C10326f fVar) {
                if (fVar == C10326f.m12489A()) {
                    return this;
                }
                if (fVar.m12475y()) {
                    m12472a(fVar.m12479u());
                }
                if (fVar.m12474z()) {
                    m12471b(fVar.m12478v());
                }
                if (this.f23296j == null) {
                    if (!fVar.f23290i.isEmpty()) {
                        if (this.f23295i.isEmpty()) {
                            this.f23295i = fVar.f23290i;
                            this.f23292f &= -5;
                        } else {
                            m12470n();
                            this.f23295i.addAll(fVar.f23290i);
                        }
                        m11657k();
                    }
                } else if (!fVar.f23290i.isEmpty()) {
                    if (this.f23296j.m11700f()) {
                        this.f23296j.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23296j = null;
                        this.f23295i = fVar.f23290i;
                        this.f23292f &= -5;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12469o();
                        }
                        this.f23296j = w0Var;
                    } else {
                        this.f23296j.m11705a(fVar.f23290i);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) fVar);
                mo11668b(fVar.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10328b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10328b) super.mo11655a(gVar, obj);
            }

            /* renamed from: a */
            public C10328b m12472a(boolean z) {
                this.f23292f |= 1;
                this.f23293g = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10328b mo11668b(C10247f1 f1Var) {
                return (C10328b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10328b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10328b) super.mo11652b(gVar, obj);
            }

            /* renamed from: b */
            public C10328b m12471b(boolean z) {
                this.f23292f |= 2;
                this.f23294h = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10326f mo11818b() {
                return C10326f.m12489A();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10326f build() {
                C10326f E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23142H;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10328b clone() {
                return (C10328b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23143I;
                gVar.m11629a(C10326f.class, C10328b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m12470n() {
                if ((this.f23292f & 4) == 0) {
                    this.f23295i = new ArrayList(this.f23295i);
                    this.f23292f |= 4;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m12469o() {
                if (this.f23296j == null) {
                    this.f23296j = new C10478w0<>(this.f23295i, (this.f23292f & 4) != 0, m11661g(), m11659i());
                    this.f23295i = null;
                }
                return this.f23296j;
            }

            /* renamed from: p */
            public final void m12468p() {
                if (AbstractC10482x.f23816d) {
                    m12469o();
                }
            }
        }

        public C10326f() {
            this.f23291j = (byte) (-1);
            this.f23290i = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10326f(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 16) {
                                    this.f23287f |= 1;
                                    this.f23288g = hVar.mo12920b();
                                } else if (r == 24) {
                                    this.f23287f |= 2;
                                    this.f23289h = hVar.mo12920b();
                                } else if (r == 7994) {
                                    i = i;
                                    if ((i & 4) == 0) {
                                        this.f23290i = new ArrayList();
                                        i |= 4;
                                    }
                                    this.f23290i.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 4) != 0) {
                            this.f23290i = Collections.unmodifiableList(this.f23290i);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10326f(AbstractC10482x.AbstractC10487d<C10326f, ?> dVar) {
            super(dVar);
            this.f23291j = (byte) (-1);
        }

        /* renamed from: A */
        public static C10326f m12489A() {
            return f23285k;
        }

        /* renamed from: B */
        public static final C10418l.C10420b m12488B() {
            return C10295k.f23142H;
        }

        /* renamed from: C */
        public static C10328b m12487C() {
            return f23285k.mo11826f();
        }

        /* renamed from: b */
        public static C10328b m12481b(C10326f fVar) {
            C10328b f = f23285k.mo11826f();
            f.m12473a(fVar);
            return f;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10328b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10328b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            if ((this.f23287f & 1) != 0) {
                iVar.mo12817a(2, this.f23288g);
            }
            if ((this.f23287f & 2) != 0) {
                iVar.mo12817a(3, this.f23289h);
            }
            for (int i = 0; i < this.f23290i.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23290i.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10326f mo11818b() {
            return f23285k;
        }

        /* renamed from: b */
        public C10357l0 m12482b(int i) {
            return this.f23290i.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10328b mo11827e() {
            return m12487C();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10326f)) {
                return super.equals(obj);
            }
            C10326f fVar = (C10326f) obj;
            if (m12475y() != fVar.m12475y()) {
                return false;
            }
            if ((!m12475y() || m12479u() == fVar.m12479u()) && m12474z() == fVar.m12474z()) {
                return (!m12474z() || m12478v() == fVar.m12478v()) && m12476x().equals(fVar.m12476x()) && this.f23817c.equals(fVar.f23817c) && m11638s().equals(fVar.m11638s());
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10328b mo11826f() {
            C10328b bVar;
            if (this == f23285k) {
                bVar = new C10328b();
            } else {
                bVar = new C10328b();
                bVar.m12473a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int b = (this.f23287f & 1) != 0 ? AbstractC10274i.m12865b(2, this.f23288g) + 0 : 0;
            int i2 = b;
            int i3 = 0;
            if ((2 & this.f23287f) != 0) {
                i2 = b + AbstractC10274i.m12865b(3, this.f23289h);
                i3 = 0;
            }
            while (i3 < this.f23290i.size()) {
                i2 += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23290i.get(i3));
                i3++;
            }
            int r = i2 + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12488B().hashCode();
            int i2 = hashCode;
            if (m12475y()) {
                i2 = (((hashCode * 37) + 2) * 53) + C10516z.m11543a(m12479u());
            }
            int i3 = i2;
            if (m12474z()) {
                i3 = (((i2 * 37) + 3) * 53) + C10516z.m11543a(m12478v());
            }
            int i4 = i3;
            if (m12477w() > 0) {
                i4 = (((i3 * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m12476x().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i4, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23291j;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12477w(); i++) {
                if (!m12482b(i).isInitialized()) {
                    this.f23291j = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23291j = (byte) 0;
                return false;
            }
            this.f23291j = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10326f> mo11677j() {
            return f23286l;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23143I;
            gVar.m11629a(C10326f.class, C10328b.class);
            return gVar;
        }

        /* renamed from: u */
        public boolean m12479u() {
            return this.f23288g;
        }

        /* renamed from: v */
        public boolean m12478v() {
            return this.f23289h;
        }

        /* renamed from: w */
        public int m12477w() {
            return this.f23290i.size();
        }

        /* renamed from: x */
        public List<C10357l0> m12476x() {
            return this.f23290i;
        }

        /* renamed from: y */
        public boolean m12475y() {
            boolean z = true;
            if ((this.f23287f & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: z */
        public boolean m12474z() {
            return (this.f23287f & 2) != 0;
        }
    }

    /* renamed from: h.i.g.k$f0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$f0.class */
    public static final class C10329f0 extends AbstractC10482x implements AbstractC10333g0 {

        /* renamed from: j */
        public static final C10329f0 f23297j = new C10329f0();
        @Deprecated

        /* renamed from: k */
        public static final AbstractC10462s0<C10329f0> f23298k = new C10330a();

        /* renamed from: e */
        public int f23299e;

        /* renamed from: f */
        public volatile Object f23300f;

        /* renamed from: g */
        public List<C10396x> f23301g;

        /* renamed from: h */
        public C10337h0 f23302h;

        /* renamed from: i */
        public byte f23303i;

        /* renamed from: h.i.g.k$f0$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$f0$a.class */
        public static final class C10330a extends AbstractC10235c<C10329f0> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10329f0 mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10329f0(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$f0$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$f0$b.class */
        public static final class C10331b extends AbstractC10482x.AbstractC10484b<C10331b> implements AbstractC10333g0 {

            /* renamed from: e */
            public int f23304e;

            /* renamed from: f */
            public Object f23305f;

            /* renamed from: g */
            public List<C10396x> f23306g;

            /* renamed from: h */
            public C10478w0<C10396x, C10396x.C10398b, AbstractC10399y> f23307h;

            /* renamed from: i */
            public C10337h0 f23308i;

            /* renamed from: j */
            public C10506x0<C10337h0, C10337h0.C10339b, AbstractC10341i0> f23309j;

            public C10331b() {
                this.f23305f = "";
                this.f23306g = Collections.emptyList();
                m12445p();
            }

            public C10331b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23305f = "";
                this.f23306g = Collections.emptyList();
                m12445p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10329f0 mo11825E() {
                C10329f0 f0Var = new C10329f0(this);
                int i = this.f23304e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                f0Var.f23300f = this.f23305f;
                C10478w0<C10396x, C10396x.C10398b, AbstractC10399y> w0Var = this.f23307h;
                if (w0Var == null) {
                    if ((this.f23304e & 2) != 0) {
                        this.f23306g = Collections.unmodifiableList(this.f23306g);
                        this.f23304e &= -3;
                    }
                    f0Var.f23301g = this.f23306g;
                } else {
                    f0Var.f23301g = w0Var.m11704b();
                }
                int i3 = i2;
                if ((i & 4) != 0) {
                    C10506x0<C10337h0, C10337h0.C10339b, AbstractC10341i0> x0Var = this.f23309j;
                    if (x0Var == null) {
                        f0Var.f23302h = this.f23308i;
                    } else {
                        f0Var.f23302h = x0Var.m11583b();
                    }
                    i3 = i2 | 2;
                }
                f0Var.f23299e = i3;
                m11658j();
                return f0Var;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10331b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10329f0.C10331b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$f0> r0 = p081h.p203i.p401g.C10295k.C10329f0.f23298k     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$f0 r0 = (p081h.p203i.p401g.C10295k.C10329f0) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$f0$b r0 = r0.m12451a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$f0 r0 = (p081h.p203i.p401g.C10295k.C10329f0) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$f0$b r0 = r0.m12451a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10329f0.C10331b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$f0$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10331b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10329f0) {
                    m12451a((C10329f0) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10331b m12451a(C10329f0 f0Var) {
                if (f0Var == C10329f0.m12454w()) {
                    return this;
                }
                if (f0Var.m12456u()) {
                    this.f23304e |= 1;
                    this.f23305f = f0Var.f23300f;
                    m11657k();
                }
                if (this.f23307h == null) {
                    if (!f0Var.f23301g.isEmpty()) {
                        if (this.f23306g.isEmpty()) {
                            this.f23306g = f0Var.f23301g;
                            this.f23304e &= -3;
                        } else {
                            m12449l();
                            this.f23306g.addAll(f0Var.f23301g);
                        }
                        m11657k();
                    }
                } else if (!f0Var.f23301g.isEmpty()) {
                    if (this.f23307h.m11700f()) {
                        this.f23307h.m11703c();
                        C10478w0<C10396x, C10396x.C10398b, AbstractC10399y> w0Var = null;
                        this.f23307h = null;
                        this.f23306g = f0Var.f23301g;
                        this.f23304e &= -3;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12448m();
                        }
                        this.f23307h = w0Var;
                    } else {
                        this.f23307h.m11705a(f0Var.f23301g);
                    }
                }
                if (f0Var.m12455v()) {
                    m12450a(f0Var.m12457t());
                }
                mo11668b(f0Var.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10331b m12450a(C10337h0 h0Var) {
                C10337h0 h0Var2;
                C10506x0<C10337h0, C10337h0.C10339b, AbstractC10341i0> x0Var = this.f23309j;
                if (x0Var == null) {
                    if ((this.f23304e & 4) == 0 || (h0Var2 = this.f23308i) == null || h0Var2 == C10337h0.m12412y()) {
                        this.f23308i = h0Var;
                    } else {
                        C10337h0.C10339b b = C10337h0.m12417b(this.f23308i);
                        b.m12410a(h0Var);
                        this.f23308i = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(h0Var);
                }
                this.f23304e |= 4;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10331b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10331b mo11668b(C10247f1 f1Var) {
                return (C10331b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10331b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10329f0 mo11818b() {
                return C10329f0.m12454w();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10329f0 build() {
                C10329f0 E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23182v;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10331b clone() {
                return (C10331b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23183w;
                gVar.m11629a(C10329f0.class, C10331b.class);
                return gVar;
            }

            /* renamed from: l */
            public final void m12449l() {
                if ((this.f23304e & 2) == 0) {
                    this.f23306g = new ArrayList(this.f23306g);
                    this.f23304e |= 2;
                }
            }

            /* renamed from: m */
            public final C10478w0<C10396x, C10396x.C10398b, AbstractC10399y> m12448m() {
                if (this.f23307h == null) {
                    this.f23307h = new C10478w0<>(this.f23306g, (this.f23304e & 2) != 0, m11661g(), m11659i());
                    this.f23306g = null;
                }
                return this.f23307h;
            }

            /* renamed from: n */
            public C10337h0 m12447n() {
                C10506x0<C10337h0, C10337h0.C10339b, AbstractC10341i0> x0Var = this.f23309j;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10337h0 h0Var = this.f23308i;
                C10337h0 h0Var2 = h0Var;
                if (h0Var == null) {
                    h0Var2 = C10337h0.m12412y();
                }
                return h0Var2;
            }

            /* renamed from: o */
            public final C10506x0<C10337h0, C10337h0.C10339b, AbstractC10341i0> m12446o() {
                if (this.f23309j == null) {
                    this.f23309j = new C10506x0<>(m12447n(), m11661g(), m11659i());
                    this.f23308i = null;
                }
                return this.f23309j;
            }

            /* renamed from: p */
            public final void m12445p() {
                if (AbstractC10482x.f23816d) {
                    m12448m();
                    m12446o();
                }
            }
        }

        public C10329f0() {
            this.f23303i = (byte) (-1);
            this.f23300f = "";
            this.f23301g = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10329f0(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 10) {
                                    AbstractC10253g c = hVar.mo12918c();
                                    this.f23299e = 1 | this.f23299e;
                                    this.f23300f = c;
                                } else if (r == 18) {
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.f23301g = new ArrayList();
                                        i |= 2;
                                    }
                                    this.f23301g.add(hVar.mo12921a(C10396x.f23588n, rVar));
                                } else if (r == 26) {
                                    C10337h0.C10339b f = (this.f23299e & 2) != 0 ? this.f23302h.mo11826f() : null;
                                    this.f23302h = (C10337h0) hVar.mo12921a(C10337h0.f23323k, rVar);
                                    if (f != null) {
                                        f.m12410a(this.f23302h);
                                        this.f23302h = f.mo11825E();
                                    }
                                    this.f23299e |= 2;
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 2) != 0) {
                            this.f23301g = Collections.unmodifiableList(this.f23301g);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10329f0(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23303i = (byte) (-1);
        }

        /* renamed from: w */
        public static C10329f0 m12454w() {
            return f23297j;
        }

        /* renamed from: x */
        public static final C10418l.C10420b m12453x() {
            return C10295k.f23182v;
        }

        /* renamed from: y */
        public static C10331b m12452y() {
            return f23297j.mo11826f();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10331b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10331b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23299e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23300f);
            }
            for (int i = 0; i < this.f23301g.size(); i++) {
                iVar.mo12808b(2, this.f23301g.get(i));
            }
            if ((this.f23299e & 2) != 0) {
                iVar.mo12808b(3, m12457t());
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10329f0 mo11818b() {
            return f23297j;
        }

        /* renamed from: b */
        public C10396x m12462b(int i) {
            return this.f23301g.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10331b mo11827e() {
            return m12452y();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10329f0)) {
                return super.equals(obj);
            }
            C10329f0 f0Var = (C10329f0) obj;
            if (m12456u() != f0Var.m12456u()) {
                return false;
            }
            if ((!m12456u() || m12458s().equals(f0Var.m12458s())) && m12459r().equals(f0Var.m12459r()) && m12455v() == f0Var.m12455v()) {
                return (!m12455v() || m12457t().equals(f0Var.m12457t())) && this.f23817c.equals(f0Var.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10331b mo11826f() {
            C10331b bVar;
            if (this == f23297j) {
                bVar = new C10331b();
            } else {
                bVar = new C10331b();
                bVar.m12451a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int a = (this.f23299e & 1) != 0 ? AbstractC10482x.m11694a(1, this.f23300f) + 0 : 0;
            for (int i2 = 0; i2 < this.f23301g.size(); i2++) {
                a += AbstractC10274i.m12840f(2, this.f23301g.get(i2));
            }
            int i3 = a;
            if ((this.f23299e & 2) != 0) {
                i3 = a + AbstractC10274i.m12840f(3, m12457t());
            }
            int h = i3 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12453x().hashCode();
            int i2 = hashCode;
            if (m12456u()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12458s().hashCode();
            }
            int i3 = i2;
            if (m12460q() > 0) {
                i3 = (((i2 * 37) + 2) * 53) + m12459r().hashCode();
            }
            int i4 = i3;
            if (m12455v()) {
                i4 = (((i3 * 37) + 3) * 53) + m12457t().hashCode();
            }
            int hashCode2 = (i4 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23303i;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12460q(); i++) {
                if (!m12462b(i).isInitialized()) {
                    this.f23303i = (byte) 0;
                    return false;
                }
            }
            if (!m12455v() || m12457t().isInitialized()) {
                this.f23303i = (byte) 1;
                return true;
            }
            this.f23303i = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10329f0> mo11677j() {
            return f23298k;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23183w;
            gVar.m11629a(C10329f0.class, C10331b.class);
            return gVar;
        }

        /* renamed from: q */
        public int m12460q() {
            return this.f23301g.size();
        }

        /* renamed from: r */
        public List<C10396x> m12459r() {
            return this.f23301g;
        }

        /* renamed from: s */
        public String m12458s() {
            Object obj = this.f23300f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23300f = s;
            }
            return s;
        }

        /* renamed from: t */
        public C10337h0 m12457t() {
            C10337h0 h0Var = this.f23302h;
            C10337h0 h0Var2 = h0Var;
            if (h0Var == null) {
                h0Var2 = C10337h0.m12412y();
            }
            return h0Var2;
        }

        /* renamed from: u */
        public boolean m12456u() {
            boolean z = true;
            if ((this.f23299e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: v */
        public boolean m12455v() {
            return (this.f23299e & 2) != 0;
        }
    }

    /* renamed from: h.i.g.k$g */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$g.class */
    public interface AbstractC10332g extends AbstractC10482x.AbstractC10490f<C10326f> {
    }

    /* renamed from: h.i.g.k$g0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$g0.class */
    public interface AbstractC10333g0 extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$h */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$h.class */
    public static final class C10334h extends AbstractC10482x implements AbstractC10340i {

        /* renamed from: j */
        public static final C10334h f23310j = new C10334h();
        @Deprecated

        /* renamed from: k */
        public static final AbstractC10462s0<C10334h> f23311k = new C10335a();

        /* renamed from: e */
        public int f23312e;

        /* renamed from: f */
        public volatile Object f23313f;

        /* renamed from: g */
        public int f23314g;

        /* renamed from: h */
        public C10342j f23315h;

        /* renamed from: i */
        public byte f23316i;

        /* renamed from: h.i.g.k$h$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$h$a.class */
        public static final class C10335a extends AbstractC10235c<C10334h> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10334h mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10334h(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$h$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$h$b.class */
        public static final class C10336b extends AbstractC10482x.AbstractC10484b<C10336b> implements AbstractC10340i {

            /* renamed from: e */
            public int f23317e;

            /* renamed from: f */
            public Object f23318f;

            /* renamed from: g */
            public int f23319g;

            /* renamed from: h */
            public C10342j f23320h;

            /* renamed from: i */
            public C10506x0<C10342j, C10342j.C10344b, AbstractC10352k> f23321i;

            public C10336b() {
                this.f23318f = "";
                m12424n();
            }

            public C10336b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23318f = "";
                m12424n();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10334h mo11825E() {
                C10334h hVar = new C10334h(this);
                int i = this.f23317e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                hVar.f23313f = this.f23318f;
                int i3 = i2;
                if ((i & 2) != 0) {
                    hVar.f23314g = this.f23319g;
                    i3 = i2 | 2;
                }
                int i4 = i3;
                if ((i & 4) != 0) {
                    C10506x0<C10342j, C10342j.C10344b, AbstractC10352k> x0Var = this.f23321i;
                    if (x0Var == null) {
                        hVar.f23315h = this.f23320h;
                    } else {
                        hVar.f23315h = x0Var.m11583b();
                    }
                    i4 = i3 | 4;
                }
                hVar.f23312e = i4;
                m11658j();
                return hVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10336b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10334h.C10336b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$h> r0 = p081h.p203i.p401g.C10295k.C10334h.f23311k     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$h r0 = (p081h.p203i.p401g.C10295k.C10334h) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$h$b r0 = r0.m12430a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x0031
                L_0x0022:
                    r6 = move-exception
                    r0 = r6
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$h r0 = (p081h.p203i.p401g.C10295k.C10334h) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r6 = move-exception
                L_0x0031:
                    r0 = r5
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r5
                    h.i.g.k$h$b r0 = r0.m12430a(r1)
                L_0x003b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10334h.C10336b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$h$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10336b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10334h) {
                    m12430a((C10334h) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10336b m12430a(C10334h hVar) {
                if (hVar == C10334h.m12433w()) {
                    return this;
                }
                if (hVar.m12436t()) {
                    this.f23317e |= 1;
                    this.f23318f = hVar.f23313f;
                    m11657k();
                }
                if (hVar.m12435u()) {
                    m12427c(hVar.m12438r());
                }
                if (hVar.m12434v()) {
                    m12429a(hVar.m12437s());
                }
                mo11668b(hVar.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10336b m12429a(C10342j jVar) {
                C10342j jVar2;
                C10506x0<C10342j, C10342j.C10344b, AbstractC10352k> x0Var = this.f23321i;
                if (x0Var == null) {
                    if ((this.f23317e & 4) == 0 || (jVar2 = this.f23320h) == null || jVar2 == C10342j.m12394y()) {
                        this.f23320h = jVar;
                    } else {
                        C10342j.C10344b b = C10342j.m12399b(this.f23320h);
                        b.m12392a(jVar);
                        this.f23320h = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(jVar);
                }
                this.f23317e |= 4;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10336b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10336b mo11668b(C10247f1 f1Var) {
                return (C10336b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10336b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            /* renamed from: b */
            public C10336b m12428b(String str) {
                if (str != null) {
                    this.f23317e |= 1;
                    this.f23318f = str;
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10334h mo11818b() {
                return C10334h.m12433w();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10334h build() {
                C10334h E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            /* renamed from: c */
            public C10336b m12427c(int i) {
                this.f23317e |= 2;
                this.f23319g = i;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23180t;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10336b clone() {
                return (C10336b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23181u;
                gVar.m11629a(C10334h.class, C10336b.class);
                return gVar;
            }

            /* renamed from: l */
            public C10342j m12426l() {
                C10506x0<C10342j, C10342j.C10344b, AbstractC10352k> x0Var = this.f23321i;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10342j jVar = this.f23320h;
                C10342j jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = C10342j.m12394y();
                }
                return jVar2;
            }

            /* renamed from: m */
            public final C10506x0<C10342j, C10342j.C10344b, AbstractC10352k> m12425m() {
                if (this.f23321i == null) {
                    this.f23321i = new C10506x0<>(m12426l(), m11661g(), m11659i());
                    this.f23320h = null;
                }
                return this.f23321i;
            }

            /* renamed from: n */
            public final void m12424n() {
                if (AbstractC10482x.f23816d) {
                    m12425m();
                }
            }
        }

        public C10334h() {
            this.f23316i = (byte) (-1);
            this.f23313f = "";
        }

        public C10334h(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 10) {
                                        AbstractC10253g c = hVar.mo12918c();
                                        this.f23312e = 1 | this.f23312e;
                                        this.f23313f = c;
                                    } else if (r == 16) {
                                        this.f23312e |= 2;
                                        this.f23314g = hVar.mo12908i();
                                    } else if (r == 26) {
                                        C10342j.C10344b f = (this.f23312e & 4) != 0 ? this.f23315h.mo11826f() : null;
                                        this.f23315h = (C10342j) hVar.mo12921a(C10342j.f23333k, rVar);
                                        if (f != null) {
                                            f.m12392a(this.f23315h);
                                            this.f23315h = f.mo11825E();
                                        }
                                        this.f23312e |= 4;
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e) {
                                e.m13078a(this);
                                throw e;
                            }
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10334h(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23316i = (byte) (-1);
        }

        /* renamed from: w */
        public static C10334h m12433w() {
            return f23310j;
        }

        /* renamed from: x */
        public static final C10418l.C10420b m12432x() {
            return C10295k.f23180t;
        }

        /* renamed from: y */
        public static C10336b m12431y() {
            return f23310j.mo11826f();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10336b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10336b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23312e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23313f);
            }
            if ((this.f23312e & 2) != 0) {
                iVar.mo12804c(2, this.f23314g);
            }
            if ((this.f23312e & 4) != 0) {
                iVar.mo12808b(3, m12437s());
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10334h mo11818b() {
            return f23310j;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10336b mo11827e() {
            return m12431y();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10334h)) {
                return super.equals(obj);
            }
            C10334h hVar = (C10334h) obj;
            if (m12436t() != hVar.m12436t()) {
                return false;
            }
            if ((m12436t() && !m12439q().equals(hVar.m12439q())) || m12435u() != hVar.m12435u()) {
                return false;
            }
            if ((!m12435u() || m12438r() == hVar.m12438r()) && m12434v() == hVar.m12434v()) {
                return (!m12434v() || m12437s().equals(hVar.m12437s())) && this.f23817c.equals(hVar.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10336b mo11826f() {
            C10336b bVar;
            if (this == f23310j) {
                bVar = new C10336b();
            } else {
                bVar = new C10336b();
                bVar.m12430a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f23312e & 1) != 0) {
                i2 = 0 + AbstractC10482x.m11694a(1, this.f23313f);
            }
            int i3 = i2;
            if ((this.f23312e & 2) != 0) {
                i3 = i2 + AbstractC10274i.m12838g(2, this.f23314g);
            }
            int i4 = i3;
            if ((this.f23312e & 4) != 0) {
                i4 = i3 + AbstractC10274i.m12840f(3, m12437s());
            }
            int h = i4 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12432x().hashCode();
            int i2 = hashCode;
            if (m12436t()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12439q().hashCode();
            }
            int i3 = i2;
            if (m12435u()) {
                i3 = (((i2 * 37) + 2) * 53) + m12438r();
            }
            int i4 = i3;
            if (m12434v()) {
                i4 = (((i3 * 37) + 3) * 53) + m12437s().hashCode();
            }
            int hashCode2 = (i4 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23316i;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m12434v() || m12437s().isInitialized()) {
                this.f23316i = (byte) 1;
                return true;
            }
            this.f23316i = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10334h> mo11677j() {
            return f23311k;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23181u;
            gVar.m11629a(C10334h.class, C10336b.class);
            return gVar;
        }

        /* renamed from: q */
        public String m12439q() {
            Object obj = this.f23313f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23313f = s;
            }
            return s;
        }

        /* renamed from: r */
        public int m12438r() {
            return this.f23314g;
        }

        /* renamed from: s */
        public C10342j m12437s() {
            C10342j jVar = this.f23315h;
            C10342j jVar2 = jVar;
            if (jVar == null) {
                jVar2 = C10342j.m12394y();
            }
            return jVar2;
        }

        /* renamed from: t */
        public boolean m12436t() {
            boolean z = true;
            if ((this.f23312e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: u */
        public boolean m12435u() {
            return (this.f23312e & 2) != 0;
        }

        /* renamed from: v */
        public boolean m12434v() {
            return (this.f23312e & 4) != 0;
        }
    }

    /* renamed from: h.i.g.k$h0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$h0.class */
    public static final class C10337h0 extends AbstractC10482x.AbstractC10488e<C10337h0> implements AbstractC10341i0 {

        /* renamed from: j */
        public static final C10337h0 f23322j = new C10337h0();
        @Deprecated

        /* renamed from: k */
        public static final AbstractC10462s0<C10337h0> f23323k = new C10338a();

        /* renamed from: f */
        public int f23324f;

        /* renamed from: g */
        public boolean f23325g;

        /* renamed from: h */
        public List<C10357l0> f23326h;

        /* renamed from: i */
        public byte f23327i;

        /* renamed from: h.i.g.k$h0$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$h0$a.class */
        public static final class C10338a extends AbstractC10235c<C10337h0> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10337h0 mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10337h0(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$h0$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$h0$b.class */
        public static final class C10339b extends AbstractC10482x.AbstractC10487d<C10337h0, C10339b> implements AbstractC10341i0 {

            /* renamed from: f */
            public int f23328f;

            /* renamed from: g */
            public boolean f23329g;

            /* renamed from: h */
            public List<C10357l0> f23330h;

            /* renamed from: i */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23331i;

            public C10339b() {
                this.f23330h = Collections.emptyList();
                m12406p();
            }

            public C10339b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23330h = Collections.emptyList();
                m12406p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10337h0 mo11825E() {
                C10337h0 h0Var = new C10337h0(this);
                int i = 1;
                if ((this.f23328f & 1) != 0) {
                    h0Var.f23325g = this.f23329g;
                } else {
                    i = 0;
                }
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23331i;
                if (w0Var == null) {
                    if ((this.f23328f & 2) != 0) {
                        this.f23330h = Collections.unmodifiableList(this.f23330h);
                        this.f23328f &= -3;
                    }
                    h0Var.f23326h = this.f23330h;
                } else {
                    h0Var.f23326h = w0Var.m11704b();
                }
                h0Var.f23324f = i;
                m11658j();
                return h0Var;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10339b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10337h0.C10339b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$h0> r0 = p081h.p203i.p401g.C10295k.C10337h0.f23323k     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$h0 r0 = (p081h.p203i.p401g.C10295k.C10337h0) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$h0$b r0 = r0.m12410a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$h0 r0 = (p081h.p203i.p401g.C10295k.C10337h0) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$h0$b r0 = r0.m12410a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10337h0.C10339b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$h0$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10339b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10337h0) {
                    m12410a((C10337h0) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10339b m12410a(C10337h0 h0Var) {
                if (h0Var == C10337h0.m12412y()) {
                    return this;
                }
                if (h0Var.m12413x()) {
                    m12409a(h0Var.m12416u());
                }
                if (this.f23331i == null) {
                    if (!h0Var.f23326h.isEmpty()) {
                        if (this.f23330h.isEmpty()) {
                            this.f23330h = h0Var.f23326h;
                            this.f23328f &= -3;
                        } else {
                            m12408n();
                            this.f23330h.addAll(h0Var.f23326h);
                        }
                        m11657k();
                    }
                } else if (!h0Var.f23326h.isEmpty()) {
                    if (this.f23331i.m11700f()) {
                        this.f23331i.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23331i = null;
                        this.f23330h = h0Var.f23326h;
                        this.f23328f &= -3;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12407o();
                        }
                        this.f23331i = w0Var;
                    } else {
                        this.f23331i.m11705a(h0Var.f23326h);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) h0Var);
                mo11668b(h0Var.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10339b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10339b) super.mo11655a(gVar, obj);
            }

            /* renamed from: a */
            public C10339b m12409a(boolean z) {
                this.f23328f |= 1;
                this.f23329g = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10339b mo11668b(C10247f1 f1Var) {
                return (C10339b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10339b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10339b) super.mo11652b(gVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10337h0 mo11818b() {
                return C10337h0.m12412y();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10337h0 build() {
                C10337h0 E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23146L;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10339b clone() {
                return (C10339b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23147M;
                gVar.m11629a(C10337h0.class, C10339b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m12408n() {
                if ((this.f23328f & 2) == 0) {
                    this.f23330h = new ArrayList(this.f23330h);
                    this.f23328f |= 2;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m12407o() {
                if (this.f23331i == null) {
                    this.f23331i = new C10478w0<>(this.f23330h, (this.f23328f & 2) != 0, m11661g(), m11659i());
                    this.f23330h = null;
                }
                return this.f23331i;
            }

            /* renamed from: p */
            public final void m12406p() {
                if (AbstractC10482x.f23816d) {
                    m12407o();
                }
            }
        }

        public C10337h0() {
            this.f23327i = (byte) (-1);
            this.f23326h = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10337h0(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 264) {
                                    this.f23324f |= 1;
                                    this.f23325g = hVar.mo12920b();
                                } else if (r == 7994) {
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.f23326h = new ArrayList();
                                        i |= 2;
                                    }
                                    this.f23326h.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 2) != 0) {
                            this.f23326h = Collections.unmodifiableList(this.f23326h);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10337h0(AbstractC10482x.AbstractC10487d<C10337h0, ?> dVar) {
            super(dVar);
            this.f23327i = (byte) (-1);
        }

        /* renamed from: A */
        public static C10339b m12423A() {
            return f23322j.mo11826f();
        }

        /* renamed from: b */
        public static C10339b m12417b(C10337h0 h0Var) {
            C10339b f = f23322j.mo11826f();
            f.m12410a(h0Var);
            return f;
        }

        /* renamed from: y */
        public static C10337h0 m12412y() {
            return f23322j;
        }

        /* renamed from: z */
        public static final C10418l.C10420b m12411z() {
            return C10295k.f23146L;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10339b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10339b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            if ((this.f23324f & 1) != 0) {
                iVar.mo12817a(33, this.f23325g);
            }
            for (int i = 0; i < this.f23326h.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23326h.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10337h0 mo11818b() {
            return f23322j;
        }

        /* renamed from: b */
        public C10357l0 m12418b(int i) {
            return this.f23326h.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10339b mo11827e() {
            return m12423A();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10337h0)) {
                return super.equals(obj);
            }
            C10337h0 h0Var = (C10337h0) obj;
            if (m12413x() != h0Var.m12413x()) {
                return false;
            }
            return (!m12413x() || m12416u() == h0Var.m12416u()) && m12414w().equals(h0Var.m12414w()) && this.f23817c.equals(h0Var.f23817c) && m11638s().equals(h0Var.m11638s());
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10339b mo11826f() {
            C10339b bVar;
            if (this == f23322j) {
                bVar = new C10339b();
            } else {
                bVar = new C10339b();
                bVar.m12410a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int b = (this.f23324f & 1) != 0 ? AbstractC10274i.m12865b(33, this.f23325g) + 0 : 0;
            for (int i2 = 0; i2 < this.f23326h.size(); i2++) {
                b += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23326h.get(i2));
            }
            int r = b + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12411z().hashCode();
            int i2 = hashCode;
            if (m12413x()) {
                i2 = (((hashCode * 37) + 33) * 53) + C10516z.m11543a(m12416u());
            }
            int i3 = i2;
            if (m12415v() > 0) {
                i3 = (((i2 * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m12414w().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i3, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23327i;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12415v(); i++) {
                if (!m12418b(i).isInitialized()) {
                    this.f23327i = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23327i = (byte) 0;
                return false;
            }
            this.f23327i = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10337h0> mo11677j() {
            return f23323k;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23147M;
            gVar.m11629a(C10337h0.class, C10339b.class);
            return gVar;
        }

        /* renamed from: u */
        public boolean m12416u() {
            return this.f23325g;
        }

        /* renamed from: v */
        public int m12415v() {
            return this.f23326h.size();
        }

        /* renamed from: w */
        public List<C10357l0> m12414w() {
            return this.f23326h;
        }

        /* renamed from: x */
        public boolean m12413x() {
            boolean z = true;
            if ((this.f23324f & 1) == 0) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: h.i.g.k$i */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$i.class */
    public interface AbstractC10340i extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$i0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$i0.class */
    public interface AbstractC10341i0 extends AbstractC10482x.AbstractC10490f<C10337h0> {
    }

    /* renamed from: h.i.g.k$j */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$j.class */
    public static final class C10342j extends AbstractC10482x.AbstractC10488e<C10342j> implements AbstractC10352k {

        /* renamed from: j */
        public static final C10342j f23332j = new C10342j();
        @Deprecated

        /* renamed from: k */
        public static final AbstractC10462s0<C10342j> f23333k = new C10343a();

        /* renamed from: f */
        public int f23334f;

        /* renamed from: g */
        public boolean f23335g;

        /* renamed from: h */
        public List<C10357l0> f23336h;

        /* renamed from: i */
        public byte f23337i;

        /* renamed from: h.i.g.k$j$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$j$a.class */
        public static final class C10343a extends AbstractC10235c<C10342j> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10342j mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10342j(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$j$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$j$b.class */
        public static final class C10344b extends AbstractC10482x.AbstractC10487d<C10342j, C10344b> implements AbstractC10352k {

            /* renamed from: f */
            public int f23338f;

            /* renamed from: g */
            public boolean f23339g;

            /* renamed from: h */
            public List<C10357l0> f23340h;

            /* renamed from: i */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23341i;

            public C10344b() {
                this.f23340h = Collections.emptyList();
                m12388p();
            }

            public C10344b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23340h = Collections.emptyList();
                m12388p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10342j mo11825E() {
                C10342j jVar = new C10342j(this);
                int i = 1;
                if ((this.f23338f & 1) != 0) {
                    jVar.f23335g = this.f23339g;
                } else {
                    i = 0;
                }
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23341i;
                if (w0Var == null) {
                    if ((this.f23338f & 2) != 0) {
                        this.f23340h = Collections.unmodifiableList(this.f23340h);
                        this.f23338f &= -3;
                    }
                    jVar.f23336h = this.f23340h;
                } else {
                    jVar.f23336h = w0Var.m11704b();
                }
                jVar.f23334f = i;
                m11658j();
                return jVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10344b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10342j.C10344b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$j> r0 = p081h.p203i.p401g.C10295k.C10342j.f23333k     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$j r0 = (p081h.p203i.p401g.C10295k.C10342j) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$j$b r0 = r0.m12392a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$j r0 = (p081h.p203i.p401g.C10295k.C10342j) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$j$b r0 = r0.m12392a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10342j.C10344b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$j$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10344b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10342j) {
                    m12392a((C10342j) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10344b m12392a(C10342j jVar) {
                if (jVar == C10342j.m12394y()) {
                    return this;
                }
                if (jVar.m12395x()) {
                    m12391a(jVar.m12398u());
                }
                if (this.f23341i == null) {
                    if (!jVar.f23336h.isEmpty()) {
                        if (this.f23340h.isEmpty()) {
                            this.f23340h = jVar.f23336h;
                            this.f23338f &= -3;
                        } else {
                            m12390n();
                            this.f23340h.addAll(jVar.f23336h);
                        }
                        m11657k();
                    }
                } else if (!jVar.f23336h.isEmpty()) {
                    if (this.f23341i.m11700f()) {
                        this.f23341i.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23341i = null;
                        this.f23340h = jVar.f23336h;
                        this.f23338f &= -3;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12389o();
                        }
                        this.f23341i = w0Var;
                    } else {
                        this.f23341i.m11705a(jVar.f23336h);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) jVar);
                mo11668b(jVar.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10344b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10344b) super.mo11655a(gVar, obj);
            }

            /* renamed from: a */
            public C10344b m12391a(boolean z) {
                this.f23338f |= 1;
                this.f23339g = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10344b mo11668b(C10247f1 f1Var) {
                return (C10344b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10344b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10344b) super.mo11652b(gVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10342j mo11818b() {
                return C10342j.m12394y();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10342j build() {
                C10342j E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23144J;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10344b clone() {
                return (C10344b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23145K;
                gVar.m11629a(C10342j.class, C10344b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m12390n() {
                if ((this.f23338f & 2) == 0) {
                    this.f23340h = new ArrayList(this.f23340h);
                    this.f23338f |= 2;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m12389o() {
                if (this.f23341i == null) {
                    this.f23341i = new C10478w0<>(this.f23340h, (this.f23338f & 2) != 0, m11661g(), m11659i());
                    this.f23340h = null;
                }
                return this.f23341i;
            }

            /* renamed from: p */
            public final void m12388p() {
                if (AbstractC10482x.f23816d) {
                    m12389o();
                }
            }
        }

        public C10342j() {
            this.f23337i = (byte) (-1);
            this.f23336h = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10342j(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 8) {
                                    this.f23334f |= 1;
                                    this.f23335g = hVar.mo12920b();
                                } else if (r == 7994) {
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.f23336h = new ArrayList();
                                        i |= 2;
                                    }
                                    this.f23336h.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 2) != 0) {
                            this.f23336h = Collections.unmodifiableList(this.f23336h);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10342j(AbstractC10482x.AbstractC10487d<C10342j, ?> dVar) {
            super(dVar);
            this.f23337i = (byte) (-1);
        }

        /* renamed from: A */
        public static C10344b m12405A() {
            return f23332j.mo11826f();
        }

        /* renamed from: b */
        public static C10344b m12399b(C10342j jVar) {
            C10344b f = f23332j.mo11826f();
            f.m12392a(jVar);
            return f;
        }

        /* renamed from: y */
        public static C10342j m12394y() {
            return f23332j;
        }

        /* renamed from: z */
        public static final C10418l.C10420b m12393z() {
            return C10295k.f23144J;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10344b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10344b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            if ((this.f23334f & 1) != 0) {
                iVar.mo12817a(1, this.f23335g);
            }
            for (int i = 0; i < this.f23336h.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23336h.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10342j mo11818b() {
            return f23332j;
        }

        /* renamed from: b */
        public C10357l0 m12400b(int i) {
            return this.f23336h.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10344b mo11827e() {
            return m12405A();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10342j)) {
                return super.equals(obj);
            }
            C10342j jVar = (C10342j) obj;
            if (m12395x() != jVar.m12395x()) {
                return false;
            }
            return (!m12395x() || m12398u() == jVar.m12398u()) && m12396w().equals(jVar.m12396w()) && this.f23817c.equals(jVar.f23817c) && m11638s().equals(jVar.m11638s());
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10344b mo11826f() {
            C10344b bVar;
            if (this == f23332j) {
                bVar = new C10344b();
            } else {
                bVar = new C10344b();
                bVar.m12392a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int b = (this.f23334f & 1) != 0 ? AbstractC10274i.m12865b(1, this.f23335g) + 0 : 0;
            for (int i2 = 0; i2 < this.f23336h.size(); i2++) {
                b += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23336h.get(i2));
            }
            int r = b + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12393z().hashCode();
            int i2 = hashCode;
            if (m12395x()) {
                i2 = (((hashCode * 37) + 1) * 53) + C10516z.m11543a(m12398u());
            }
            int i3 = i2;
            if (m12397v() > 0) {
                i3 = (((i2 * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m12396w().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i3, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23337i;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12397v(); i++) {
                if (!m12400b(i).isInitialized()) {
                    this.f23337i = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23337i = (byte) 0;
                return false;
            }
            this.f23337i = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10342j> mo11677j() {
            return f23333k;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23145K;
            gVar.m11629a(C10342j.class, C10344b.class);
            return gVar;
        }

        /* renamed from: u */
        public boolean m12398u() {
            return this.f23335g;
        }

        /* renamed from: v */
        public int m12397v() {
            return this.f23336h.size();
        }

        /* renamed from: w */
        public List<C10357l0> m12396w() {
            return this.f23336h;
        }

        /* renamed from: x */
        public boolean m12395x() {
            boolean z = true;
            if ((this.f23334f & 1) == 0) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: h.i.g.k$j0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$j0.class */
    public static final class C10345j0 extends AbstractC10482x implements AbstractC10353k0 {

        /* renamed from: g */
        public static final C10345j0 f23342g = new C10345j0();
        @Deprecated

        /* renamed from: h */
        public static final AbstractC10462s0<C10345j0> f23343h = new C10346a();

        /* renamed from: e */
        public List<C10348c> f23344e;

        /* renamed from: f */
        public byte f23345f;

        /* renamed from: h.i.g.k$j0$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$j0$a.class */
        public static final class C10346a extends AbstractC10235c<C10345j0> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10345j0 mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10345j0(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$j0$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$j0$b.class */
        public static final class C10347b extends AbstractC10482x.AbstractC10484b<C10347b> implements AbstractC10353k0 {

            /* renamed from: e */
            public int f23346e;

            /* renamed from: f */
            public List<C10348c> f23347f;

            /* renamed from: g */
            public C10478w0<C10348c, C10348c.C10350b, AbstractC10351d> f23348g;

            public C10347b() {
                this.f23347f = Collections.emptyList();
                m12376n();
            }

            public C10347b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23347f = Collections.emptyList();
                m12376n();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10345j0 mo11825E() {
                C10345j0 j0Var = new C10345j0(this);
                int i = this.f23346e;
                C10478w0<C10348c, C10348c.C10350b, AbstractC10351d> w0Var = this.f23348g;
                if (w0Var == null) {
                    if ((i & 1) != 0) {
                        this.f23347f = Collections.unmodifiableList(this.f23347f);
                        this.f23346e &= -2;
                    }
                    j0Var.f23344e = this.f23347f;
                } else {
                    j0Var.f23344e = w0Var.m11704b();
                }
                m11658j();
                return j0Var;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10347b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10345j0.C10347b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$j0> r0 = p081h.p203i.p401g.C10295k.C10345j0.f23343h     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$j0 r0 = (p081h.p203i.p401g.C10295k.C10345j0) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$j0$b r0 = r0.m12379a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$j0 r0 = (p081h.p203i.p401g.C10295k.C10345j0) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$j0$b r0 = r0.m12379a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10345j0.C10347b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$j0$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10347b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10345j0) {
                    m12379a((C10345j0) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10347b m12379a(C10345j0 j0Var) {
                if (j0Var == C10345j0.m12382s()) {
                    return this;
                }
                if (this.f23348g == null) {
                    if (!j0Var.f23344e.isEmpty()) {
                        if (this.f23347f.isEmpty()) {
                            this.f23347f = j0Var.f23344e;
                            this.f23346e &= -2;
                        } else {
                            m12378l();
                            this.f23347f.addAll(j0Var.f23344e);
                        }
                        m11657k();
                    }
                } else if (!j0Var.f23344e.isEmpty()) {
                    if (this.f23348g.m11700f()) {
                        this.f23348g.m11703c();
                        C10478w0<C10348c, C10348c.C10350b, AbstractC10351d> w0Var = null;
                        this.f23348g = null;
                        this.f23347f = j0Var.f23344e;
                        this.f23346e &= -2;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12377m();
                        }
                        this.f23348g = w0Var;
                    } else {
                        this.f23348g.m11705a(j0Var.f23344e);
                    }
                }
                mo11668b(j0Var.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10347b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10347b mo11668b(C10247f1 f1Var) {
                return (C10347b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10347b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10345j0 mo11818b() {
                return C10345j0.m12382s();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10345j0 build() {
                C10345j0 E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23154T;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10347b clone() {
                return (C10347b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23155U;
                gVar.m11629a(C10345j0.class, C10347b.class);
                return gVar;
            }

            /* renamed from: l */
            public final void m12378l() {
                if ((this.f23346e & 1) == 0) {
                    this.f23347f = new ArrayList(this.f23347f);
                    this.f23346e |= 1;
                }
            }

            /* renamed from: m */
            public final C10478w0<C10348c, C10348c.C10350b, AbstractC10351d> m12377m() {
                if (this.f23348g == null) {
                    List<C10348c> list = this.f23347f;
                    boolean z = true;
                    if ((this.f23346e & 1) == 0) {
                        z = false;
                    }
                    this.f23348g = new C10478w0<>(list, z, m11661g(), m11659i());
                    this.f23347f = null;
                }
                return this.f23348g;
            }

            /* renamed from: n */
            public final void m12376n() {
                if (AbstractC10482x.f23816d) {
                    m12377m();
                }
            }
        }

        /* renamed from: h.i.g.k$j0$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$j0$c.class */
        public static final class C10348c extends AbstractC10482x implements AbstractC10351d {

            /* renamed from: n */
            public static final C10348c f23349n = new C10348c();
            @Deprecated

            /* renamed from: o */
            public static final AbstractC10462s0<C10348c> f23350o = new C10349a();

            /* renamed from: e */
            public int f23351e;

            /* renamed from: f */
            public C10516z.AbstractC10519c f23352f;

            /* renamed from: g */
            public int f23353g;

            /* renamed from: h */
            public C10516z.AbstractC10519c f23354h;

            /* renamed from: i */
            public int f23355i;

            /* renamed from: j */
            public volatile Object f23356j;

            /* renamed from: k */
            public volatile Object f23357k;

            /* renamed from: l */
            public AbstractC10243e0 f23358l;

            /* renamed from: m */
            public byte f23359m;

            /* renamed from: h.i.g.k$j0$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$j0$c$a.class */
            public static final class C10349a extends AbstractC10235c<C10348c> {
                @Override // p081h.p203i.p401g.AbstractC10462s0
                /* renamed from: a */
                public C10348c mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                    return new C10348c(hVar, rVar);
                }
            }

            /* renamed from: h.i.g.k$j0$c$b */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$j0$c$b.class */
            public static final class C10350b extends AbstractC10482x.AbstractC10484b<C10350b> implements AbstractC10351d {

                /* renamed from: e */
                public int f23360e;

                /* renamed from: f */
                public C10516z.AbstractC10519c f23361f;

                /* renamed from: g */
                public C10516z.AbstractC10519c f23362g;

                /* renamed from: h */
                public Object f23363h;

                /* renamed from: i */
                public Object f23364i;

                /* renamed from: j */
                public AbstractC10243e0 f23365j;

                public C10350b() {
                    this.f23361f = AbstractC10482x.m11675o();
                    this.f23362g = AbstractC10482x.m11675o();
                    this.f23363h = "";
                    this.f23364i = "";
                    this.f23365j = C10240d0.f23071d;
                    m12347o();
                }

                public C10350b(AbstractC10482x.AbstractC10486c cVar) {
                    super(cVar);
                    this.f23361f = AbstractC10482x.m11675o();
                    this.f23362g = AbstractC10482x.m11675o();
                    this.f23363h = "";
                    this.f23364i = "";
                    this.f23365j = C10240d0.f23071d;
                    m12347o();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: E */
                public C10348c mo11825E() {
                    C10348c cVar = new C10348c(this);
                    int i = this.f23360e;
                    if ((i & 1) != 0) {
                        this.f23361f.mo11536d();
                        this.f23360e &= -2;
                    }
                    cVar.f23352f = this.f23361f;
                    if ((this.f23360e & 2) != 0) {
                        this.f23362g.mo11536d();
                        this.f23360e &= -3;
                    }
                    cVar.f23354h = this.f23362g;
                    int i2 = (i & 4) != 0 ? 1 : 0;
                    cVar.f23356j = this.f23363h;
                    int i3 = i2;
                    if ((i & 8) != 0) {
                        i3 = i2 | 2;
                    }
                    cVar.f23357k = this.f23364i;
                    if ((this.f23360e & 16) != 0) {
                        this.f23365j = this.f23365j.mo12887o();
                        this.f23360e &= -17;
                    }
                    cVar.f23358l = this.f23365j;
                    cVar.f23351e = i3;
                    m11658j();
                    return cVar;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public final C10350b mo11672a(C10247f1 f1Var) {
                    super.mo11672a(f1Var);
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public p081h.p203i.p401g.C10295k.C10345j0.C10348c.C10350b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        h.i.g.s0<h.i.g.k$j0$c> r0 = p081h.p203i.p401g.C10295k.C10345j0.C10348c.f23350o     // Catch: all -> 0x001c, a0 -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                        h.i.g.k$j0$c r0 = (p081h.p203i.p401g.C10295k.C10345j0.C10348c) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        h.i.g.k$j0$c$b r0 = r0.m12351a(r1)
                    L_0x001a:
                        r0 = r4
                        return r0
                    L_0x001c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L_0x0031
                    L_0x0022:
                        r5 = move-exception
                        r0 = r5
                        h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                        h.i.g.k$j0$c r0 = (p081h.p203i.p401g.C10295k.C10345j0.C10348c) r0     // Catch: all -> 0x001c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                        throw r0     // Catch: all -> 0x0030
                    L_0x0030:
                        r5 = move-exception
                    L_0x0031:
                        r0 = r6
                        if (r0 == 0) goto L_0x003b
                        r0 = r4
                        r1 = r6
                        h.i.g.k$j0$c$b r0 = r0.m12351a(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10345j0.C10348c.C10350b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$j0$c$b");
                }

                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10350b mo11824a(AbstractC10287j0 j0Var) {
                    if (j0Var instanceof C10348c) {
                        m12351a((C10348c) j0Var);
                        return this;
                    }
                    super.mo11824a(j0Var);
                    return this;
                }

                /* renamed from: a */
                public C10350b m12351a(C10348c cVar) {
                    if (cVar == C10348c.m12375A()) {
                        return this;
                    }
                    if (!cVar.f23352f.isEmpty()) {
                        if (this.f23361f.isEmpty()) {
                            this.f23361f = cVar.f23352f;
                            this.f23360e &= -2;
                        } else {
                            m12349m();
                            this.f23361f.addAll(cVar.f23352f);
                        }
                        m11657k();
                    }
                    if (!cVar.f23354h.isEmpty()) {
                        if (this.f23362g.isEmpty()) {
                            this.f23362g = cVar.f23354h;
                            this.f23360e &= -3;
                        } else {
                            m12348n();
                            this.f23362g.addAll(cVar.f23354h);
                        }
                        m11657k();
                    }
                    if (cVar.m12353y()) {
                        this.f23360e |= 4;
                        this.f23363h = cVar.f23356j;
                        m11657k();
                    }
                    if (cVar.m12352z()) {
                        this.f23360e |= 8;
                        this.f23364i = cVar.f23357k;
                        m11657k();
                    }
                    if (!cVar.f23358l.isEmpty()) {
                        if (this.f23365j.isEmpty()) {
                            this.f23365j = cVar.f23358l;
                            this.f23360e &= -17;
                        } else {
                            m12350l();
                            this.f23365j.addAll(cVar.f23358l);
                        }
                        m11657k();
                    }
                    mo11668b(cVar.f23817c);
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10350b mo11655a(C10418l.C10428g gVar, Object obj) {
                    super.mo11655a(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                /* renamed from: b */
                public final C10350b mo11668b(C10247f1 f1Var) {
                    return (C10350b) super.mo11668b(f1Var);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: b */
                public C10350b mo11652b(C10418l.C10428g gVar, Object obj) {
                    super.mo11652b(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: b */
                public C10348c mo11818b() {
                    return C10348c.m12375A();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                public C10348c build() {
                    C10348c E = mo11825E();
                    if (E.isInitialized()) {
                        return E;
                    }
                    throw AbstractC10219a.AbstractC10220a.m13080b(E);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: c */
                public C10418l.C10420b mo11666c() {
                    return C10295k.f23156V;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                public C10350b clone() {
                    return (C10350b) super.clone();
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
                /* renamed from: h */
                public AbstractC10482x.C10491g mo11660h() {
                    AbstractC10482x.C10491g gVar = C10295k.f23157W;
                    gVar.m11629a(C10348c.class, C10350b.class);
                    return gVar;
                }

                /* renamed from: l */
                public final void m12350l() {
                    if ((this.f23360e & 16) == 0) {
                        this.f23365j = new C10240d0(this.f23365j);
                        this.f23360e |= 16;
                    }
                }

                /* renamed from: m */
                public final void m12349m() {
                    if ((this.f23360e & 1) == 0) {
                        this.f23361f = AbstractC10482x.m11686a(this.f23361f);
                        this.f23360e |= 1;
                    }
                }

                /* renamed from: n */
                public final void m12348n() {
                    if ((this.f23360e & 2) == 0) {
                        this.f23362g = AbstractC10482x.m11686a(this.f23362g);
                        this.f23360e |= 2;
                    }
                }

                /* renamed from: o */
                public final void m12347o() {
                }
            }

            public C10348c() {
                this.f23353g = -1;
                this.f23355i = -1;
                this.f23359m = (byte) (-1);
                this.f23352f = AbstractC10482x.m11675o();
                this.f23354h = AbstractC10482x.m11675o();
                this.f23356j = "";
                this.f23357k = "";
                this.f23358l = C10240d0.f23071d;
            }

            public C10348c(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                this();
                if (rVar != null) {
                    C10247f1.C10249b d = C10247f1.m13019d();
                    boolean z = false;
                    int i = 0;
                    while (!z) {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 8) {
                                        i = i;
                                        if ((i & 1) == 0) {
                                            this.f23352f = AbstractC10482x.m11674p();
                                            i |= 1;
                                        }
                                        this.f23352f.mo11537e(hVar.mo12908i());
                                    } else if (r == 10) {
                                        int c = hVar.mo12917c(hVar.mo12906k());
                                        i = i;
                                        if ((i & 1) == 0) {
                                            i = i;
                                            if (hVar.mo12925a() > 0) {
                                                this.f23352f = AbstractC10482x.m11674p();
                                                i |= 1;
                                            }
                                        }
                                        while (hVar.mo12925a() > 0) {
                                            this.f23352f.mo11537e(hVar.mo12908i());
                                        }
                                        hVar.mo12919b(c);
                                    } else if (r == 16) {
                                        i = i;
                                        if ((i & 2) == 0) {
                                            this.f23354h = AbstractC10482x.m11674p();
                                            i |= 2;
                                        }
                                        this.f23354h.mo11537e(hVar.mo12908i());
                                    } else if (r == 18) {
                                        int c2 = hVar.mo12917c(hVar.mo12906k());
                                        i = i;
                                        if ((i & 2) == 0) {
                                            i = i;
                                            if (hVar.mo12925a() > 0) {
                                                this.f23354h = AbstractC10482x.m11674p();
                                                i |= 2;
                                            }
                                        }
                                        while (hVar.mo12925a() > 0) {
                                            this.f23354h.mo11537e(hVar.mo12908i());
                                        }
                                        hVar.mo12919b(c2);
                                    } else if (r == 26) {
                                        AbstractC10253g c3 = hVar.mo12918c();
                                        this.f23351e = 1 | this.f23351e;
                                        this.f23356j = c3;
                                    } else if (r == 34) {
                                        AbstractC10253g c4 = hVar.mo12918c();
                                        this.f23351e |= 2;
                                        this.f23357k = c4;
                                    } else if (r == 50) {
                                        AbstractC10253g c5 = hVar.mo12918c();
                                        i = i;
                                        if ((i & 16) == 0) {
                                            this.f23358l = new C10240d0();
                                            i |= 16;
                                        }
                                        this.f23358l.mo12889b(c5);
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e) {
                                e.m13078a(this);
                                throw e;
                            } catch (IOException e2) {
                                C10222a0 a0Var = new C10222a0(e2);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } finally {
                            if ((i & 1) != 0) {
                                this.f23352f.mo11536d();
                            }
                            if ((i & 2) != 0) {
                                this.f23354h.mo11536d();
                            }
                            if ((i & 16) != 0) {
                                this.f23358l = this.f23358l.mo12887o();
                            }
                            this.f23817c = d.build();
                            mo11641n();
                        }
                    }
                    return;
                }
                throw new NullPointerException();
            }

            public C10348c(AbstractC10482x.AbstractC10484b<?> bVar) {
                super(bVar);
                this.f23353g = -1;
                this.f23355i = -1;
                this.f23359m = (byte) (-1);
            }

            /* renamed from: A */
            public static C10348c m12375A() {
                return f23349n;
            }

            /* renamed from: B */
            public static final C10418l.C10420b m12374B() {
                return C10295k.f23156V;
            }

            /* renamed from: C */
            public static C10350b m12373C() {
                return f23349n.mo11826f();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: a */
            public C10350b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
                return new C10350b(cVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: a */
            public void mo11692a(AbstractC10274i iVar) throws IOException {
                mo11678h();
                if (m12357u().size() > 0) {
                    iVar.mo12798g(10);
                    iVar.mo12798g(this.f23353g);
                }
                for (int i = 0; i < this.f23352f.size(); i++) {
                    iVar.mo12805c(this.f23352f.getInt(i));
                }
                if (m12355w().size() > 0) {
                    iVar.mo12798g(18);
                    iVar.mo12798g(this.f23355i);
                }
                for (int i2 = 0; i2 < this.f23354h.size(); i2++) {
                    iVar.mo12805c(this.f23354h.getInt(i2));
                }
                if ((this.f23351e & 1) != 0) {
                    AbstractC10482x.m11691a(iVar, 3, this.f23356j);
                }
                int i3 = 0;
                if ((this.f23351e & 2) != 0) {
                    AbstractC10482x.m11691a(iVar, 4, this.f23357k);
                    i3 = 0;
                }
                while (i3 < this.f23358l.size()) {
                    AbstractC10482x.m11691a(iVar, 6, this.f23358l.mo12891a(i3));
                    i3++;
                }
                this.f23817c.mo11692a(iVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10348c mo11818b() {
                return f23349n;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: d */
            public final C10247f1 mo11664d() {
                return this.f23817c;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: e */
            public C10350b mo11827e() {
                return m12373C();
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C10348c)) {
                    return super.equals(obj);
                }
                C10348c cVar = (C10348c) obj;
                if (!m12357u().equals(cVar.m12357u()) || !m12355w().equals(cVar.m12355w()) || m12353y() != cVar.m12353y()) {
                    return false;
                }
                if ((!m12353y() || m12361q().equals(cVar.m12361q())) && m12352z() == cVar.m12352z()) {
                    return (!m12352z() || m12354x().equals(cVar.m12354x())) && m12359s().equals(cVar.m12359s()) && this.f23817c.equals(cVar.f23817c);
                }
                return false;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: f */
            public C10350b mo11826f() {
                C10350b bVar;
                if (this == f23349n) {
                    bVar = new C10350b();
                } else {
                    bVar = new C10350b();
                    bVar.m12351a(this);
                }
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: h */
            public int mo11678h() {
                int i = this.f23054b;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                for (int i3 = 0; i3 < this.f23352f.size(); i3++) {
                    i2 += AbstractC10274i.m12831j(this.f23352f.getInt(i3));
                }
                int i4 = 0 + i2;
                int i5 = i4;
                if (!m12357u().isEmpty()) {
                    i5 = i4 + 1 + AbstractC10274i.m12831j(i2);
                }
                this.f23353g = i2;
                int i6 = 0;
                for (int i7 = 0; i7 < this.f23354h.size(); i7++) {
                    i6 += AbstractC10274i.m12831j(this.f23354h.getInt(i7));
                }
                int i8 = i5 + i6;
                int i9 = i8;
                if (!m12355w().isEmpty()) {
                    i9 = i8 + 1 + AbstractC10274i.m12831j(i6);
                }
                this.f23355i = i6;
                int i10 = i9;
                if ((this.f23351e & 1) != 0) {
                    i10 = i9 + AbstractC10482x.m11694a(3, this.f23356j);
                }
                int i11 = i10;
                if ((this.f23351e & 2) != 0) {
                    i11 = i10 + AbstractC10482x.m11694a(4, this.f23357k);
                }
                int i12 = 0;
                for (int i13 = 0; i13 < this.f23358l.size(); i13++) {
                    i12 += AbstractC10482x.m11679c(this.f23358l.mo12891a(i13));
                }
                int size = i11 + i12 + (m12359s().size() * 1) + this.f23817c.mo11678h();
                this.f23054b = size;
                return size;
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public int hashCode() {
                int i = this.f23058a;
                if (i != 0) {
                    return i;
                }
                int hashCode = 779 + m12374B().hashCode();
                int i2 = hashCode;
                if (m12358t() > 0) {
                    i2 = (((hashCode * 37) + 1) * 53) + m12357u().hashCode();
                }
                int i3 = i2;
                if (m12356v() > 0) {
                    i3 = (((i2 * 37) + 2) * 53) + m12355w().hashCode();
                }
                int i4 = i3;
                if (m12353y()) {
                    i4 = (((i3 * 37) + 3) * 53) + m12361q().hashCode();
                }
                int i5 = i4;
                if (m12352z()) {
                    i5 = (((i4 * 37) + 4) * 53) + m12354x().hashCode();
                }
                int i6 = i5;
                if (m12360r() > 0) {
                    i6 = (((i5 * 37) + 6) * 53) + m12359s().hashCode();
                }
                int hashCode2 = (i6 * 29) + this.f23817c.hashCode();
                this.f23058a = hashCode2;
                return hashCode2;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
            public final boolean isInitialized() {
                byte b = this.f23359m;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.f23359m = (byte) 1;
                return true;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: j */
            public AbstractC10462s0<C10348c> mo11677j() {
                return f23350o;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: m */
            public AbstractC10482x.C10491g mo11676m() {
                AbstractC10482x.C10491g gVar = C10295k.f23157W;
                gVar.m11629a(C10348c.class, C10350b.class);
                return gVar;
            }

            /* renamed from: q */
            public String m12361q() {
                Object obj = this.f23356j;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC10253g gVar = (AbstractC10253g) obj;
                String s = gVar.m12963s();
                if (gVar.mo12953b()) {
                    this.f23356j = s;
                }
                return s;
            }

            /* renamed from: r */
            public int m12360r() {
                return this.f23358l.size();
            }

            /* renamed from: s */
            public AbstractC10476v0 m12359s() {
                return this.f23358l;
            }

            /* renamed from: t */
            public int m12358t() {
                return this.f23352f.size();
            }

            /* renamed from: u */
            public List<Integer> m12357u() {
                return this.f23352f;
            }

            /* renamed from: v */
            public int m12356v() {
                return this.f23354h.size();
            }

            /* renamed from: w */
            public List<Integer> m12355w() {
                return this.f23354h;
            }

            /* renamed from: x */
            public String m12354x() {
                Object obj = this.f23357k;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC10253g gVar = (AbstractC10253g) obj;
                String s = gVar.m12963s();
                if (gVar.mo12953b()) {
                    this.f23357k = s;
                }
                return s;
            }

            /* renamed from: y */
            public boolean m12353y() {
                boolean z = true;
                if ((this.f23351e & 1) == 0) {
                    z = false;
                }
                return z;
            }

            /* renamed from: z */
            public boolean m12352z() {
                return (this.f23351e & 2) != 0;
            }
        }

        /* renamed from: h.i.g.k$j0$d */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$j0$d.class */
        public interface AbstractC10351d extends AbstractC10444n0 {
        }

        public C10345j0() {
            this.f23345f = (byte) (-1);
            this.f23344e = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10345j0(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 10) {
                                        z2 = z2;
                                        if (!z2 || !true) {
                                            this.f23344e = new ArrayList();
                                            z2 |= true;
                                        }
                                        this.f23344e.add(hVar.mo12921a(C10348c.f23350o, rVar));
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e) {
                                e.m13078a(this);
                                throw e;
                            }
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if (z2 && true) {
                            this.f23344e = Collections.unmodifiableList(this.f23344e);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10345j0(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23345f = (byte) (-1);
        }

        /* renamed from: b */
        public static C10347b m12385b(C10345j0 j0Var) {
            C10347b f = f23342g.mo11826f();
            f.m12379a(j0Var);
            return f;
        }

        /* renamed from: s */
        public static C10345j0 m12382s() {
            return f23342g;
        }

        /* renamed from: t */
        public static final C10418l.C10420b m12381t() {
            return C10295k.f23154T;
        }

        /* renamed from: u */
        public static C10347b m12380u() {
            return f23342g.mo11826f();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10347b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10347b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            for (int i = 0; i < this.f23344e.size(); i++) {
                iVar.mo12808b(1, this.f23344e.get(i));
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10345j0 mo11818b() {
            return f23342g;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10347b mo11827e() {
            return m12380u();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10345j0)) {
                return super.equals(obj);
            }
            C10345j0 j0Var = (C10345j0) obj;
            return m12383r().equals(j0Var.m12383r()) && this.f23817c.equals(j0Var.f23817c);
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10347b mo11826f() {
            C10347b bVar;
            if (this == f23342g) {
                bVar = new C10347b();
            } else {
                bVar = new C10347b();
                bVar.m12379a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f23344e.size(); i3++) {
                i2 += AbstractC10274i.m12840f(1, this.f23344e.get(i3));
            }
            int h = i2 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12381t().hashCode();
            int i2 = hashCode;
            if (m12384q() > 0) {
                i2 = (((hashCode * 37) + 1) * 53) + m12383r().hashCode();
            }
            int hashCode2 = (i2 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23345f;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f23345f = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10345j0> mo11677j() {
            return f23343h;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23155U;
            gVar.m11629a(C10345j0.class, C10347b.class);
            return gVar;
        }

        /* renamed from: q */
        public int m12384q() {
            return this.f23344e.size();
        }

        /* renamed from: r */
        public List<C10348c> m12383r() {
            return this.f23344e;
        }
    }

    /* renamed from: h.i.g.k$k */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$k.class */
    public interface AbstractC10352k extends AbstractC10482x.AbstractC10490f<C10342j> {
    }

    /* renamed from: h.i.g.k$k0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$k0.class */
    public interface AbstractC10353k0 extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$l */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$l.class */
    public static final class C10354l extends AbstractC10482x.AbstractC10488e<C10354l> implements AbstractC10364m {

        /* renamed from: h */
        public static final C10354l f23366h = new C10354l();
        @Deprecated

        /* renamed from: i */
        public static final AbstractC10462s0<C10354l> f23367i = new C10355a();

        /* renamed from: f */
        public List<C10357l0> f23368f;

        /* renamed from: g */
        public byte f23369g;

        /* renamed from: h.i.g.k$l$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$l$a.class */
        public static final class C10355a extends AbstractC10235c<C10354l> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10354l mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10354l(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$l$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$l$b.class */
        public static final class C10356b extends AbstractC10482x.AbstractC10487d<C10354l, C10356b> implements AbstractC10364m {

            /* renamed from: f */
            public int f23370f;

            /* renamed from: g */
            public List<C10357l0> f23371g;

            /* renamed from: h */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23372h;

            public C10356b() {
                this.f23371g = Collections.emptyList();
                m12334p();
            }

            public C10356b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23371g = Collections.emptyList();
                m12334p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10354l mo11825E() {
                C10354l lVar = new C10354l(this);
                int i = this.f23370f;
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23372h;
                if (w0Var == null) {
                    if ((i & 1) != 0) {
                        this.f23371g = Collections.unmodifiableList(this.f23371g);
                        this.f23370f &= -2;
                    }
                    lVar.f23368f = this.f23371g;
                } else {
                    lVar.f23368f = w0Var.m11704b();
                }
                m11658j();
                return lVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10356b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10354l.C10356b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$l> r0 = p081h.p203i.p401g.C10295k.C10354l.f23367i     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$l r0 = (p081h.p203i.p401g.C10295k.C10354l) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$l$b r0 = r0.m12337a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x0037
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$l r0 = (p081h.p203i.p401g.C10295k.C10354l) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                    r0 = r7
                    r5 = r0
                L_0x0037:
                    r0 = r5
                    if (r0 == 0) goto L_0x0041
                    r0 = r4
                    r1 = r5
                    h.i.g.k$l$b r0 = r0.m12337a(r1)
                L_0x0041:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10354l.C10356b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$l$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10356b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10354l) {
                    return m12337a((C10354l) j0Var);
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10356b m12337a(C10354l lVar) {
                if (lVar == C10354l.m12340w()) {
                    return this;
                }
                if (this.f23372h == null) {
                    if (!lVar.f23368f.isEmpty()) {
                        if (this.f23371g.isEmpty()) {
                            this.f23371g = lVar.f23368f;
                            this.f23370f &= -2;
                        } else {
                            m12336n();
                            this.f23371g.addAll(lVar.f23368f);
                        }
                        m11657k();
                    }
                } else if (!lVar.f23368f.isEmpty()) {
                    if (this.f23372h.m11700f()) {
                        this.f23372h.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23372h = null;
                        this.f23371g = lVar.f23368f;
                        this.f23370f &= -2;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12335o();
                        }
                        this.f23372h = w0Var;
                    } else {
                        this.f23372h.m11705a(lVar.f23368f);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) lVar);
                mo11668b(lVar.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10356b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10356b) super.mo11655a(gVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10356b mo11668b(C10247f1 f1Var) {
                return (C10356b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10356b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10356b) super.mo11652b(gVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10354l mo11818b() {
                return C10354l.m12340w();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10354l build() {
                C10354l E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23170j;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10356b clone() {
                return (C10356b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23171k;
                gVar.m11629a(C10354l.class, C10356b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m12336n() {
                if ((this.f23370f & 1) == 0) {
                    this.f23371g = new ArrayList(this.f23371g);
                    this.f23370f |= 1;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m12335o() {
                if (this.f23372h == null) {
                    List<C10357l0> list = this.f23371g;
                    boolean z = true;
                    if ((this.f23370f & 1) == 0) {
                        z = false;
                    }
                    this.f23372h = new C10478w0<>(list, z, m11661g(), m11659i());
                    this.f23371g = null;
                }
                return this.f23372h;
            }

            /* renamed from: p */
            public final void m12334p() {
                if (AbstractC10482x.f23816d) {
                    m12335o();
                }
            }
        }

        public C10354l() {
            this.f23369g = (byte) (-1);
            this.f23368f = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10354l(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 7994) {
                                        z2 = z2;
                                        if (!z2 || !true) {
                                            this.f23368f = new ArrayList();
                                            z2 |= true;
                                        }
                                        this.f23368f.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (IOException e) {
                                C10222a0 a0Var = new C10222a0(e);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } catch (C10222a0 e2) {
                            e2.m13078a(this);
                            throw e2;
                        }
                    } finally {
                        if (z2 && true) {
                            this.f23368f = Collections.unmodifiableList(this.f23368f);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10354l(AbstractC10482x.AbstractC10487d<C10354l, ?> dVar) {
            super(dVar);
            this.f23369g = (byte) (-1);
        }

        /* renamed from: b */
        public static C10356b m12343b(C10354l lVar) {
            return f23366h.mo11826f().m12337a(lVar);
        }

        /* renamed from: w */
        public static C10354l m12340w() {
            return f23366h;
        }

        /* renamed from: x */
        public static final C10418l.C10420b m12339x() {
            return C10295k.f23170j;
        }

        /* renamed from: y */
        public static C10356b m12338y() {
            return f23366h.mo11826f();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10356b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10356b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            for (int i = 0; i < this.f23368f.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23368f.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        /* renamed from: b */
        public C10357l0 m12344b(int i) {
            return this.f23368f.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10354l mo11818b() {
            return f23366h;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10356b mo11827e() {
            return m12338y();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10354l)) {
                return super.equals(obj);
            }
            C10354l lVar = (C10354l) obj;
            return m12341v().equals(lVar.m12341v()) && this.f23817c.equals(lVar.f23817c) && m11638s().equals(lVar.m11638s());
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10356b mo11826f() {
            return this == f23366h ? new C10356b() : new C10356b().m12337a(this);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f23368f.size(); i3++) {
                i2 += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23368f.get(i3));
            }
            int r = i2 + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12339x().hashCode();
            int i2 = hashCode;
            if (m12342u() > 0) {
                i2 = (((hashCode * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m12341v().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i2, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23369g;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12342u(); i++) {
                if (!m12344b(i).isInitialized()) {
                    this.f23369g = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23369g = (byte) 0;
                return false;
            }
            this.f23369g = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10354l> mo11677j() {
            return f23367i;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23171k;
            gVar.m11629a(C10354l.class, C10356b.class);
            return gVar;
        }

        /* renamed from: u */
        public int m12342u() {
            return this.f23368f.size();
        }

        /* renamed from: v */
        public List<C10357l0> m12341v() {
            return this.f23368f;
        }
    }

    /* renamed from: h.i.g.k$l0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$l0.class */
    public static final class C10357l0 extends AbstractC10482x implements AbstractC10365m0 {

        /* renamed from: n */
        public static final C10357l0 f23373n = new C10357l0();
        @Deprecated

        /* renamed from: o */
        public static final AbstractC10462s0<C10357l0> f23374o = new C10358a();

        /* renamed from: e */
        public int f23375e;

        /* renamed from: f */
        public List<C10360c> f23376f;

        /* renamed from: g */
        public volatile Object f23377g;

        /* renamed from: h */
        public long f23378h;

        /* renamed from: i */
        public long f23379i;

        /* renamed from: j */
        public double f23380j;

        /* renamed from: k */
        public AbstractC10253g f23381k;

        /* renamed from: l */
        public volatile Object f23382l;

        /* renamed from: m */
        public byte f23383m;

        /* renamed from: h.i.g.k$l0$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$l0$a.class */
        public static final class C10358a extends AbstractC10235c<C10357l0> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10357l0 mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10357l0(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$l0$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$l0$b.class */
        public static final class C10359b extends AbstractC10482x.AbstractC10484b<C10359b> implements AbstractC10365m0 {

            /* renamed from: e */
            public int f23384e;

            /* renamed from: f */
            public List<C10360c> f23385f;

            /* renamed from: g */
            public C10478w0<C10360c, C10360c.C10362b, AbstractC10363d> f23386g;

            /* renamed from: h */
            public Object f23387h;

            /* renamed from: i */
            public long f23388i;

            /* renamed from: j */
            public long f23389j;

            /* renamed from: k */
            public double f23390k;

            /* renamed from: l */
            public AbstractC10253g f23391l;

            /* renamed from: m */
            public Object f23392m;

            public C10359b() {
                this.f23385f = Collections.emptyList();
                this.f23387h = "";
                this.f23391l = AbstractC10253g.f23087b;
                this.f23392m = "";
                m12297n();
            }

            public C10359b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23385f = Collections.emptyList();
                this.f23387h = "";
                this.f23391l = AbstractC10253g.f23087b;
                this.f23392m = "";
                m12297n();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10357l0 mo11825E() {
                C10357l0 l0Var = new C10357l0(this);
                int i = this.f23384e;
                C10478w0<C10360c, C10360c.C10362b, AbstractC10363d> w0Var = this.f23386g;
                if (w0Var == null) {
                    if ((i & 1) != 0) {
                        this.f23385f = Collections.unmodifiableList(this.f23385f);
                        this.f23384e &= -2;
                    }
                    l0Var.f23376f = this.f23385f;
                } else {
                    l0Var.f23376f = w0Var.m11704b();
                }
                int i2 = (i & 2) != 0 ? 1 : 0;
                l0Var.f23377g = this.f23387h;
                int i3 = i2;
                if ((i & 4) != 0) {
                    l0Var.f23378h = this.f23388i;
                    i3 = i2 | 2;
                }
                int i4 = i3;
                if ((i & 8) != 0) {
                    l0Var.f23379i = this.f23389j;
                    i4 = i3 | 4;
                }
                int i5 = i4;
                if ((i & 16) != 0) {
                    l0Var.f23380j = this.f23390k;
                    i5 = i4 | 8;
                }
                int i6 = i5;
                if ((i & 32) != 0) {
                    i6 = i5 | 16;
                }
                l0Var.f23381k = this.f23391l;
                int i7 = i6;
                if ((i & 64) != 0) {
                    i7 = i6 | 32;
                }
                l0Var.f23382l = this.f23392m;
                l0Var.f23375e = i7;
                m11658j();
                return l0Var;
            }

            /* renamed from: a */
            public C10359b m12304a(double d) {
                this.f23384e |= 16;
                this.f23390k = d;
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10359b m12303a(long j) {
                this.f23384e |= 8;
                this.f23389j = j;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10359b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10357l0.C10359b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$l0> r0 = p081h.p203i.p401g.C10295k.C10357l0.f23374o     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$l0 r0 = (p081h.p203i.p401g.C10295k.C10357l0) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$l0$b r0 = r0.m12302a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$l0 r0 = (p081h.p203i.p401g.C10295k.C10357l0) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$l0$b r0 = r0.m12302a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10357l0.C10359b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$l0$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10359b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10357l0) {
                    m12302a((C10357l0) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10359b m12302a(C10357l0 l0Var) {
                if (l0Var == C10357l0.m12329E()) {
                    return this;
                }
                if (this.f23386g == null) {
                    if (!l0Var.f23376f.isEmpty()) {
                        if (this.f23385f.isEmpty()) {
                            this.f23385f = l0Var.f23376f;
                            this.f23384e &= -2;
                        } else {
                            m12299l();
                            this.f23385f.addAll(l0Var.f23376f);
                        }
                        m11657k();
                    }
                } else if (!l0Var.f23376f.isEmpty()) {
                    if (this.f23386g.m11700f()) {
                        this.f23386g.m11703c();
                        C10478w0<C10360c, C10360c.C10362b, AbstractC10363d> w0Var = null;
                        this.f23386g = null;
                        this.f23385f = l0Var.f23376f;
                        this.f23384e &= -2;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12298m();
                        }
                        this.f23386g = w0Var;
                    } else {
                        this.f23386g.m11705a(l0Var.f23376f);
                    }
                }
                if (l0Var.m12333A()) {
                    this.f23384e |= 2;
                    this.f23387h = l0Var.f23377g;
                    m11657k();
                }
                if (l0Var.m12331C()) {
                    m12301b(l0Var.m12308w());
                }
                if (l0Var.m12332B()) {
                    m12303a(l0Var.m12309v());
                }
                if (l0Var.m12305z()) {
                    m12304a(l0Var.m12313r());
                }
                if (l0Var.m12330D()) {
                    m12300b(l0Var.m12307x());
                }
                if (l0Var.m12306y()) {
                    this.f23384e |= 64;
                    this.f23392m = l0Var.f23382l;
                    m11657k();
                }
                mo11668b(l0Var.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10359b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            /* renamed from: b */
            public C10359b m12301b(long j) {
                this.f23384e |= 4;
                this.f23388i = j;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10359b mo11668b(C10247f1 f1Var) {
                return (C10359b) super.mo11668b(f1Var);
            }

            /* renamed from: b */
            public C10359b m12300b(AbstractC10253g gVar) {
                if (gVar != null) {
                    this.f23384e |= 32;
                    this.f23391l = gVar;
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10359b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10357l0 mo11818b() {
                return C10357l0.m12329E();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10357l0 build() {
                C10357l0 E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23150P;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10359b clone() {
                return (C10359b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23151Q;
                gVar.m11629a(C10357l0.class, C10359b.class);
                return gVar;
            }

            /* renamed from: l */
            public final void m12299l() {
                if ((this.f23384e & 1) == 0) {
                    this.f23385f = new ArrayList(this.f23385f);
                    this.f23384e |= 1;
                }
            }

            /* renamed from: m */
            public final C10478w0<C10360c, C10360c.C10362b, AbstractC10363d> m12298m() {
                if (this.f23386g == null) {
                    List<C10360c> list = this.f23385f;
                    boolean z = true;
                    if ((this.f23384e & 1) == 0) {
                        z = false;
                    }
                    this.f23386g = new C10478w0<>(list, z, m11661g(), m11659i());
                    this.f23385f = null;
                }
                return this.f23386g;
            }

            /* renamed from: n */
            public final void m12297n() {
                if (AbstractC10482x.f23816d) {
                    m12298m();
                }
            }
        }

        /* renamed from: h.i.g.k$l0$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$l0$c.class */
        public static final class C10360c extends AbstractC10482x implements AbstractC10363d {

            /* renamed from: i */
            public static final C10360c f23393i = new C10360c();
            @Deprecated

            /* renamed from: j */
            public static final AbstractC10462s0<C10360c> f23394j = new C10361a();

            /* renamed from: e */
            public int f23395e;

            /* renamed from: f */
            public volatile Object f23396f;

            /* renamed from: g */
            public boolean f23397g;

            /* renamed from: h */
            public byte f23398h;

            /* renamed from: h.i.g.k$l0$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$l0$c$a.class */
            public static final class C10361a extends AbstractC10235c<C10360c> {
                @Override // p081h.p203i.p401g.AbstractC10462s0
                /* renamed from: a */
                public C10360c mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                    return new C10360c(hVar, rVar);
                }
            }

            /* renamed from: h.i.g.k$l0$c$b */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$l0$c$b.class */
            public static final class C10362b extends AbstractC10482x.AbstractC10484b<C10362b> implements AbstractC10363d {

                /* renamed from: e */
                public int f23399e;

                /* renamed from: f */
                public Object f23400f;

                /* renamed from: g */
                public boolean f23401g;

                public C10362b() {
                    this.f23400f = "";
                    m12283l();
                }

                public C10362b(AbstractC10482x.AbstractC10486c cVar) {
                    super(cVar);
                    this.f23400f = "";
                    m12283l();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: E */
                public C10360c mo11825E() {
                    C10360c cVar = new C10360c(this);
                    int i = this.f23399e;
                    int i2 = (i & 1) != 0 ? 1 : 0;
                    cVar.f23396f = this.f23400f;
                    int i3 = i2;
                    if ((i & 2) != 0) {
                        cVar.f23397g = this.f23401g;
                        i3 = i2 | 2;
                    }
                    cVar.f23395e = i3;
                    m11658j();
                    return cVar;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public final C10362b mo11672a(C10247f1 f1Var) {
                    super.mo11672a(f1Var);
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public p081h.p203i.p401g.C10295k.C10357l0.C10360c.C10362b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        h.i.g.s0<h.i.g.k$l0$c> r0 = p081h.p203i.p401g.C10295k.C10357l0.C10360c.f23394j     // Catch: all -> 0x001c, a0 -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                        h.i.g.k$l0$c r0 = (p081h.p203i.p401g.C10295k.C10357l0.C10360c) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        h.i.g.k$l0$c$b r0 = r0.m12285a(r1)
                    L_0x001a:
                        r0 = r4
                        return r0
                    L_0x001c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        goto L_0x0031
                    L_0x0022:
                        r5 = move-exception
                        r0 = r5
                        h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                        h.i.g.k$l0$c r0 = (p081h.p203i.p401g.C10295k.C10357l0.C10360c) r0     // Catch: all -> 0x001c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                        throw r0     // Catch: all -> 0x0030
                    L_0x0030:
                        r5 = move-exception
                    L_0x0031:
                        r0 = r6
                        if (r0 == 0) goto L_0x003b
                        r0 = r4
                        r1 = r6
                        h.i.g.k$l0$c$b r0 = r0.m12285a(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10357l0.C10360c.C10362b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$l0$c$b");
                }

                @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10362b mo11824a(AbstractC10287j0 j0Var) {
                    if (j0Var instanceof C10360c) {
                        m12285a((C10360c) j0Var);
                        return this;
                    }
                    super.mo11824a(j0Var);
                    return this;
                }

                /* renamed from: a */
                public C10362b m12285a(C10360c cVar) {
                    if (cVar == C10360c.m12288u()) {
                        return this;
                    }
                    if (cVar.m12289t()) {
                        this.f23399e |= 1;
                        this.f23400f = cVar.f23396f;
                        m11657k();
                    }
                    if (cVar.m12290s()) {
                        m12284a(cVar.m12292q());
                    }
                    mo11668b(cVar.f23817c);
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: a */
                public C10362b mo11655a(C10418l.C10428g gVar, Object obj) {
                    super.mo11655a(gVar, obj);
                    return this;
                }

                /* renamed from: a */
                public C10362b m12284a(boolean z) {
                    this.f23399e |= 2;
                    this.f23401g = z;
                    m11657k();
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                /* renamed from: b */
                public final C10362b mo11668b(C10247f1 f1Var) {
                    return (C10362b) super.mo11668b(f1Var);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
                /* renamed from: b */
                public C10362b mo11652b(C10418l.C10428g gVar, Object obj) {
                    super.mo11652b(gVar, obj);
                    return this;
                }

                @Override // p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: b */
                public C10360c mo11818b() {
                    return C10360c.m12288u();
                }

                @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
                public C10360c build() {
                    C10360c E = mo11825E();
                    if (E.isInitialized()) {
                        return E;
                    }
                    throw AbstractC10219a.AbstractC10220a.m13080b(E);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
                /* renamed from: c */
                public C10418l.C10420b mo11666c() {
                    return C10295k.f23152R;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
                public C10362b clone() {
                    return (C10362b) super.clone();
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
                /* renamed from: h */
                public AbstractC10482x.C10491g mo11660h() {
                    AbstractC10482x.C10491g gVar = C10295k.f23153S;
                    gVar.m11629a(C10360c.class, C10362b.class);
                    return gVar;
                }

                /* renamed from: l */
                public final void m12283l() {
                }
            }

            public C10360c() {
                this.f23398h = (byte) (-1);
                this.f23396f = "";
            }

            public C10360c(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                this();
                if (rVar != null) {
                    C10247f1.C10249b d = C10247f1.m13019d();
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                try {
                                    int r = hVar.mo12899r();
                                    if (r != 0) {
                                        if (r == 10) {
                                            AbstractC10253g c = hVar.mo12918c();
                                            this.f23395e = 1 | this.f23395e;
                                            this.f23396f = c;
                                        } else if (r == 16) {
                                            this.f23395e |= 2;
                                            this.f23397g = hVar.mo12920b();
                                        } else if (!mo11647a(hVar, d, rVar, r)) {
                                        }
                                    }
                                    z = true;
                                } catch (C10222a0 e) {
                                    e.m13078a(this);
                                    throw e;
                                }
                            } catch (IOException e2) {
                                C10222a0 a0Var = new C10222a0(e2);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } finally {
                            this.f23817c = d.build();
                            mo11641n();
                        }
                    }
                    return;
                }
                throw new NullPointerException();
            }

            public C10360c(AbstractC10482x.AbstractC10484b<?> bVar) {
                super(bVar);
                this.f23398h = (byte) (-1);
            }

            /* renamed from: u */
            public static C10360c m12288u() {
                return f23393i;
            }

            /* renamed from: v */
            public static final C10418l.C10420b m12287v() {
                return C10295k.f23152R;
            }

            /* renamed from: w */
            public static C10362b m12286w() {
                return f23393i.mo11826f();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: a */
            public C10362b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
                return new C10362b(cVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: a */
            public void mo11692a(AbstractC10274i iVar) throws IOException {
                if ((this.f23395e & 1) != 0) {
                    AbstractC10482x.m11691a(iVar, 1, this.f23396f);
                }
                if ((this.f23395e & 2) != 0) {
                    iVar.mo12817a(2, this.f23397g);
                }
                this.f23817c.mo11692a(iVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10360c mo11818b() {
                return f23393i;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: d */
            public final C10247f1 mo11664d() {
                return this.f23817c;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: e */
            public C10362b mo11827e() {
                return m12286w();
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C10360c)) {
                    return super.equals(obj);
                }
                C10360c cVar = (C10360c) obj;
                if (m12289t() != cVar.m12289t()) {
                    return false;
                }
                if ((!m12289t() || m12291r().equals(cVar.m12291r())) && m12290s() == cVar.m12290s()) {
                    return (!m12290s() || m12292q() == cVar.m12292q()) && this.f23817c.equals(cVar.f23817c);
                }
                return false;
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: f */
            public C10362b mo11826f() {
                C10362b bVar;
                if (this == f23393i) {
                    bVar = new C10362b();
                } else {
                    bVar = new C10362b();
                    bVar.m12285a(this);
                }
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: h */
            public int mo11678h() {
                int i = this.f23054b;
                if (i != -1) {
                    return i;
                }
                int i2 = 0;
                if ((this.f23395e & 1) != 0) {
                    i2 = 0 + AbstractC10482x.m11694a(1, this.f23396f);
                }
                int i3 = i2;
                if ((this.f23395e & 2) != 0) {
                    i3 = i2 + AbstractC10274i.m12865b(2, this.f23397g);
                }
                int h = i3 + this.f23817c.mo11678h();
                this.f23054b = h;
                return h;
            }

            @Override // p081h.p203i.p401g.AbstractC10219a
            public int hashCode() {
                int i = this.f23058a;
                if (i != 0) {
                    return i;
                }
                int hashCode = 779 + m12287v().hashCode();
                int i2 = hashCode;
                if (m12289t()) {
                    i2 = (((hashCode * 37) + 1) * 53) + m12291r().hashCode();
                }
                int i3 = i2;
                if (m12290s()) {
                    i3 = (((i2 * 37) + 2) * 53) + C10516z.m11543a(m12292q());
                }
                int hashCode2 = (i3 * 29) + this.f23817c.hashCode();
                this.f23058a = hashCode2;
                return hashCode2;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
            public final boolean isInitialized() {
                byte b = this.f23398h;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                if (!m12289t()) {
                    this.f23398h = (byte) 0;
                    return false;
                } else if (!m12290s()) {
                    this.f23398h = (byte) 0;
                    return false;
                } else {
                    this.f23398h = (byte) 1;
                    return true;
                }
            }

            @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
            /* renamed from: j */
            public AbstractC10462s0<C10360c> mo11677j() {
                return f23394j;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x
            /* renamed from: m */
            public AbstractC10482x.C10491g mo11676m() {
                AbstractC10482x.C10491g gVar = C10295k.f23153S;
                gVar.m11629a(C10360c.class, C10362b.class);
                return gVar;
            }

            /* renamed from: q */
            public boolean m12292q() {
                return this.f23397g;
            }

            /* renamed from: r */
            public String m12291r() {
                Object obj = this.f23396f;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC10253g gVar = (AbstractC10253g) obj;
                String s = gVar.m12963s();
                if (gVar.mo12953b()) {
                    this.f23396f = s;
                }
                return s;
            }

            /* renamed from: s */
            public boolean m12290s() {
                return (this.f23395e & 2) != 0;
            }

            /* renamed from: t */
            public boolean m12289t() {
                boolean z = true;
                if ((this.f23395e & 1) == 0) {
                    z = false;
                }
                return z;
            }
        }

        /* renamed from: h.i.g.k$l0$d */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$l0$d.class */
        public interface AbstractC10363d extends AbstractC10444n0 {
        }

        public C10357l0() {
            this.f23383m = (byte) (-1);
            this.f23376f = Collections.emptyList();
            this.f23377g = "";
            this.f23381k = AbstractC10253g.f23087b;
            this.f23382l = "";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10357l0(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 18) {
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.f23376f = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f23376f.add(hVar.mo12921a(C10360c.f23394j, rVar));
                                } else if (r == 26) {
                                    AbstractC10253g c = hVar.mo12918c();
                                    this.f23375e |= 1;
                                    this.f23377g = c;
                                } else if (r == 32) {
                                    this.f23375e |= 2;
                                    this.f23378h = hVar.mo12897t();
                                } else if (r == 40) {
                                    this.f23375e |= 4;
                                    this.f23379i = hVar.mo12907j();
                                } else if (r == 49) {
                                    this.f23375e |= 8;
                                    this.f23380j = hVar.mo12916d();
                                } else if (r == 58) {
                                    this.f23375e |= 16;
                                    this.f23381k = hVar.mo12918c();
                                } else if (r == 66) {
                                    AbstractC10253g c2 = hVar.mo12918c();
                                    this.f23375e = 32 | this.f23375e;
                                    this.f23382l = c2;
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if (z2 && true) {
                            this.f23376f = Collections.unmodifiableList(this.f23376f);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10357l0(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23383m = (byte) (-1);
        }

        /* renamed from: E */
        public static C10357l0 m12329E() {
            return f23373n;
        }

        /* renamed from: F */
        public static final C10418l.C10420b m12328F() {
            return C10295k.f23150P;
        }

        /* renamed from: G */
        public static C10359b m12327G() {
            return f23373n.mo11826f();
        }

        /* renamed from: A */
        public boolean m12333A() {
            boolean z = true;
            if ((this.f23375e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: B */
        public boolean m12332B() {
            return (this.f23375e & 4) != 0;
        }

        /* renamed from: C */
        public boolean m12331C() {
            return (this.f23375e & 2) != 0;
        }

        /* renamed from: D */
        public boolean m12330D() {
            return (this.f23375e & 16) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10359b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10359b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            for (int i = 0; i < this.f23376f.size(); i++) {
                iVar.mo12808b(2, this.f23376f.get(i));
            }
            if ((this.f23375e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 3, this.f23377g);
            }
            if ((this.f23375e & 2) != 0) {
                iVar.mo12803c(4, this.f23378h);
            }
            if ((this.f23375e & 4) != 0) {
                iVar.m12868b(5, this.f23379i);
            }
            if ((this.f23375e & 8) != 0) {
                iVar.m12880a(6, this.f23380j);
            }
            if ((this.f23375e & 16) != 0) {
                iVar.mo12819a(7, this.f23381k);
            }
            if ((this.f23375e & 32) != 0) {
                AbstractC10482x.m11691a(iVar, 8, this.f23382l);
            }
            this.f23817c.mo11692a(iVar);
        }

        /* renamed from: b */
        public C10360c m12319b(int i) {
            return this.f23376f.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10357l0 mo11818b() {
            return f23373n;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10359b mo11827e() {
            return m12327G();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10357l0)) {
                return super.equals(obj);
            }
            C10357l0 l0Var = (C10357l0) obj;
            if (!m12310u().equals(l0Var.m12310u()) || m12333A() != l0Var.m12333A()) {
                return false;
            }
            if ((m12333A() && !m12312s().equals(l0Var.m12312s())) || m12331C() != l0Var.m12331C()) {
                return false;
            }
            if ((m12331C() && m12308w() != l0Var.m12308w()) || m12332B() != l0Var.m12332B()) {
                return false;
            }
            if ((m12332B() && m12309v() != l0Var.m12309v()) || m12305z() != l0Var.m12305z()) {
                return false;
            }
            if ((m12305z() && Double.doubleToLongBits(m12313r()) != Double.doubleToLongBits(l0Var.m12313r())) || m12330D() != l0Var.m12330D()) {
                return false;
            }
            if ((!m12330D() || m12307x().equals(l0Var.m12307x())) && m12306y() == l0Var.m12306y()) {
                return (!m12306y() || m12314q().equals(l0Var.m12314q())) && this.f23817c.equals(l0Var.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10359b mo11826f() {
            C10359b bVar;
            if (this == f23373n) {
                bVar = new C10359b();
            } else {
                bVar = new C10359b();
                bVar.m12302a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f23376f.size(); i3++) {
                i2 += AbstractC10274i.m12840f(2, this.f23376f.get(i3));
            }
            int i4 = i2;
            if ((this.f23375e & 1) != 0) {
                i4 = i2 + AbstractC10482x.m11694a(3, this.f23377g);
            }
            int i5 = i4;
            if ((this.f23375e & 2) != 0) {
                i5 = i4 + AbstractC10274i.m12841f(4, this.f23378h);
            }
            int i6 = i5;
            if ((this.f23375e & 4) != 0) {
                i6 = i5 + AbstractC10274i.m12845e(5, this.f23379i);
            }
            int i7 = i6;
            if ((this.f23375e & 8) != 0) {
                i7 = i6 + AbstractC10274i.m12869b(6, this.f23380j);
            }
            int i8 = i7;
            if ((this.f23375e & 16) != 0) {
                i8 = i7 + AbstractC10274i.m12858c(7, this.f23381k);
            }
            int i9 = i8;
            if ((this.f23375e & 32) != 0) {
                i9 = i8 + AbstractC10482x.m11694a(8, this.f23382l);
            }
            int h = i9 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12328F().hashCode();
            int i2 = hashCode;
            if (m12311t() > 0) {
                i2 = (((hashCode * 37) + 2) * 53) + m12310u().hashCode();
            }
            int i3 = i2;
            if (m12333A()) {
                i3 = (((i2 * 37) + 3) * 53) + m12312s().hashCode();
            }
            int i4 = i3;
            if (m12331C()) {
                i4 = (((i3 * 37) + 4) * 53) + C10516z.m11547a(m12308w());
            }
            int i5 = i4;
            if (m12332B()) {
                i5 = (((i4 * 37) + 5) * 53) + C10516z.m11547a(m12309v());
            }
            int i6 = i5;
            if (m12305z()) {
                i6 = (((i5 * 37) + 6) * 53) + C10516z.m11547a(Double.doubleToLongBits(m12313r()));
            }
            int i7 = i6;
            if (m12330D()) {
                i7 = (((i6 * 37) + 7) * 53) + m12307x().hashCode();
            }
            int i8 = i7;
            if (m12306y()) {
                i8 = (((i7 * 37) + 8) * 53) + m12314q().hashCode();
            }
            int hashCode2 = (i8 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23383m;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12311t(); i++) {
                if (!m12319b(i).isInitialized()) {
                    this.f23383m = (byte) 0;
                    return false;
                }
            }
            this.f23383m = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10357l0> mo11677j() {
            return f23374o;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23151Q;
            gVar.m11629a(C10357l0.class, C10359b.class);
            return gVar;
        }

        /* renamed from: q */
        public String m12314q() {
            Object obj = this.f23382l;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23382l = s;
            }
            return s;
        }

        /* renamed from: r */
        public double m12313r() {
            return this.f23380j;
        }

        /* renamed from: s */
        public String m12312s() {
            Object obj = this.f23377g;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23377g = s;
            }
            return s;
        }

        /* renamed from: t */
        public int m12311t() {
            return this.f23376f.size();
        }

        /* renamed from: u */
        public List<C10360c> m12310u() {
            return this.f23376f;
        }

        /* renamed from: v */
        public long m12309v() {
            return this.f23379i;
        }

        /* renamed from: w */
        public long m12308w() {
            return this.f23378h;
        }

        /* renamed from: x */
        public AbstractC10253g m12307x() {
            return this.f23381k;
        }

        /* renamed from: y */
        public boolean m12306y() {
            return (this.f23375e & 32) != 0;
        }

        /* renamed from: z */
        public boolean m12305z() {
            return (this.f23375e & 8) != 0;
        }
    }

    /* renamed from: h.i.g.k$m */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$m.class */
    public interface AbstractC10364m extends AbstractC10482x.AbstractC10490f<C10354l> {
    }

    /* renamed from: h.i.g.k$m0 */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$m0.class */
    public interface AbstractC10365m0 extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$n */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$n.class */
    public static final class C10366n extends AbstractC10482x implements AbstractC10373o {

        /* renamed from: q */
        public static final C10366n f23402q = new C10366n();
        @Deprecated

        /* renamed from: r */
        public static final AbstractC10462s0<C10366n> f23403r = new C10367a();

        /* renamed from: e */
        public int f23404e;

        /* renamed from: f */
        public volatile Object f23405f;

        /* renamed from: g */
        public int f23406g;

        /* renamed from: h */
        public int f23407h;

        /* renamed from: i */
        public int f23408i;

        /* renamed from: j */
        public volatile Object f23409j;

        /* renamed from: k */
        public volatile Object f23410k;

        /* renamed from: l */
        public volatile Object f23411l;

        /* renamed from: m */
        public int f23412m;

        /* renamed from: n */
        public volatile Object f23413n;

        /* renamed from: o */
        public C10374p f23414o;

        /* renamed from: p */
        public byte f23415p;

        /* renamed from: h.i.g.k$n$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$n$a.class */
        public static final class C10367a extends AbstractC10235c<C10366n> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10366n mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10366n(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$n$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$n$b.class */
        public static final class C10368b extends AbstractC10482x.AbstractC10484b<C10368b> implements AbstractC10373o {

            /* renamed from: e */
            public int f23416e;

            /* renamed from: f */
            public Object f23417f;

            /* renamed from: g */
            public int f23418g;

            /* renamed from: h */
            public int f23419h;

            /* renamed from: i */
            public int f23420i;

            /* renamed from: j */
            public Object f23421j;

            /* renamed from: k */
            public Object f23422k;

            /* renamed from: l */
            public Object f23423l;

            /* renamed from: m */
            public int f23424m;

            /* renamed from: n */
            public Object f23425n;

            /* renamed from: o */
            public C10374p f23426o;

            /* renamed from: p */
            public C10506x0<C10374p, C10374p.C10376b, AbstractC10381q> f23427p;

            public C10368b() {
                this.f23417f = "";
                this.f23419h = 1;
                this.f23420i = 1;
                this.f23421j = "";
                this.f23422k = "";
                this.f23423l = "";
                this.f23425n = "";
                m12235n();
            }

            public C10368b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23417f = "";
                this.f23419h = 1;
                this.f23420i = 1;
                this.f23421j = "";
                this.f23422k = "";
                this.f23423l = "";
                this.f23425n = "";
                m12235n();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10366n mo11825E() {
                C10366n nVar = new C10366n(this);
                int i = this.f23416e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                nVar.f23405f = this.f23417f;
                int i3 = i2;
                if ((i & 2) != 0) {
                    nVar.f23406g = this.f23418g;
                    i3 = i2 | 2;
                }
                int i4 = i3;
                if ((i & 4) != 0) {
                    i4 = i3 | 4;
                }
                nVar.f23407h = this.f23419h;
                int i5 = i4;
                if ((i & 8) != 0) {
                    i5 = i4 | 8;
                }
                nVar.f23408i = this.f23420i;
                int i6 = i5;
                if ((i & 16) != 0) {
                    i6 = i5 | 16;
                }
                nVar.f23409j = this.f23421j;
                int i7 = i6;
                if ((i & 32) != 0) {
                    i7 = i6 | 32;
                }
                nVar.f23410k = this.f23422k;
                int i8 = i7;
                if ((i & 64) != 0) {
                    i8 = i7 | 64;
                }
                nVar.f23411l = this.f23423l;
                int i9 = i8;
                if ((i & 128) != 0) {
                    nVar.f23412m = this.f23424m;
                    i9 = i8 | 128;
                }
                int i10 = i9;
                if ((i & 256) != 0) {
                    i10 = i9 | 256;
                }
                nVar.f23413n = this.f23425n;
                int i11 = i10;
                if ((i & 512) != 0) {
                    C10506x0<C10374p, C10374p.C10376b, AbstractC10381q> x0Var = this.f23427p;
                    if (x0Var == null) {
                        nVar.f23414o = this.f23426o;
                    } else {
                        nVar.f23414o = x0Var.m11583b();
                    }
                    i11 = i10 | 512;
                }
                nVar.f23404e = i11;
                m11658j();
                return nVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10368b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10366n.C10368b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$n> r0 = p081h.p203i.p401g.C10295k.C10366n.f23403r     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$n r0 = (p081h.p203i.p401g.C10295k.C10366n) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$n$b r0 = r0.m12241a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$n r0 = (p081h.p203i.p401g.C10295k.C10366n) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$n$b r0 = r0.m12241a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10366n.C10368b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$n$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10368b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10366n) {
                    m12241a((C10366n) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10368b m12243a(EnumC10369c cVar) {
                if (cVar != null) {
                    this.f23416e |= 4;
                    this.f23419h = cVar.getNumber();
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            /* renamed from: a */
            public C10368b m12242a(EnumC10371d dVar) {
                if (dVar != null) {
                    this.f23416e |= 8;
                    this.f23420i = dVar.getNumber();
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            /* renamed from: a */
            public C10368b m12241a(C10366n nVar) {
                if (nVar == C10366n.m12272K()) {
                    return this;
                }
                if (nVar.m12278E()) {
                    this.f23416e |= 1;
                    this.f23417f = nVar.f23405f;
                    m11657k();
                }
                if (nVar.m12277F()) {
                    m12239c(nVar.m12248v());
                }
                if (nVar.m12279D()) {
                    m12243a(nVar.m12250t());
                }
                if (nVar.m12274I()) {
                    m12242a(nVar.m12245y());
                }
                if (nVar.m12273J()) {
                    this.f23416e |= 16;
                    this.f23421j = nVar.f23409j;
                    m11657k();
                }
                if (nVar.m12281B()) {
                    this.f23416e |= 32;
                    this.f23422k = nVar.f23410k;
                    m11657k();
                }
                if (nVar.m12282A()) {
                    this.f23416e |= 64;
                    this.f23423l = nVar.f23411l;
                    m11657k();
                }
                if (nVar.m12276G()) {
                    m12238d(nVar.m12247w());
                }
                if (nVar.m12280C()) {
                    this.f23416e |= 256;
                    this.f23425n = nVar.f23413n;
                    m11657k();
                }
                if (nVar.m12275H()) {
                    m12240a(nVar.m12246x());
                }
                mo11668b(nVar.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10368b m12240a(C10374p pVar) {
                C10374p pVar2;
                C10506x0<C10374p, C10374p.C10376b, AbstractC10381q> x0Var = this.f23427p;
                if (x0Var == null) {
                    if ((this.f23416e & 512) == 0 || (pVar2 = this.f23426o) == null || pVar2 == C10374p.m12222I()) {
                        this.f23426o = pVar;
                    } else {
                        C10374p.C10376b b = C10374p.m12214b(this.f23426o);
                        b.m12200a(pVar);
                        this.f23426o = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(pVar);
                }
                this.f23416e |= 512;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10368b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10368b mo11668b(C10247f1 f1Var) {
                return (C10368b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10368b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10366n mo11818b() {
                return C10366n.m12272K();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10366n build() {
                C10366n E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            /* renamed from: c */
            public C10368b m12239c(int i) {
                this.f23416e |= 2;
                this.f23418g = i;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23172l;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10368b clone() {
                return (C10368b) super.clone();
            }

            /* renamed from: d */
            public C10368b m12238d(int i) {
                this.f23416e |= 128;
                this.f23424m = i;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23173m;
                gVar.m11629a(C10366n.class, C10368b.class);
                return gVar;
            }

            /* renamed from: l */
            public C10374p m12237l() {
                C10506x0<C10374p, C10374p.C10376b, AbstractC10381q> x0Var = this.f23427p;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10374p pVar = this.f23426o;
                C10374p pVar2 = pVar;
                if (pVar == null) {
                    pVar2 = C10374p.m12222I();
                }
                return pVar2;
            }

            /* renamed from: m */
            public final C10506x0<C10374p, C10374p.C10376b, AbstractC10381q> m12236m() {
                if (this.f23427p == null) {
                    this.f23427p = new C10506x0<>(m12237l(), m11661g(), m11659i());
                    this.f23426o = null;
                }
                return this.f23427p;
            }

            /* renamed from: n */
            public final void m12235n() {
                if (AbstractC10482x.f23816d) {
                    m12236m();
                }
            }
        }

        /* renamed from: h.i.g.k$n$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$n$c.class */
        public enum EnumC10369c implements AbstractC10469u0 {
            LABEL_OPTIONAL(1),
            LABEL_REQUIRED(2),
            LABEL_REPEATED(3);
            

            /* renamed from: a */
            public final int f23432a;

            /* renamed from: h.i.g.k$n$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$n$c$a.class */
            public static final class C10370a implements C10516z.AbstractC10518b<EnumC10369c> {
            }

            static {
                new C10370a();
                values();
            }

            EnumC10369c(int i) {
                this.f23432a = i;
            }

            /* renamed from: a */
            public static EnumC10369c m12234a(int i) {
                if (i == 1) {
                    return LABEL_OPTIONAL;
                }
                if (i == 2) {
                    return LABEL_REQUIRED;
                }
                if (i != 3) {
                    return null;
                }
                return LABEL_REPEATED;
            }

            @Deprecated
            /* renamed from: b */
            public static EnumC10369c m12233b(int i) {
                return m12234a(i);
            }

            @Override // p081h.p203i.p401g.C10516z.AbstractC10517a
            public final int getNumber() {
                return this.f23432a;
            }
        }

        /* renamed from: h.i.g.k$n$d */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$n$d.class */
        public enum EnumC10371d implements AbstractC10469u0 {
            TYPE_DOUBLE(1),
            TYPE_FLOAT(2),
            TYPE_INT64(3),
            TYPE_UINT64(4),
            TYPE_INT32(5),
            TYPE_FIXED64(6),
            TYPE_FIXED32(7),
            TYPE_BOOL(8),
            TYPE_STRING(9),
            TYPE_GROUP(10),
            TYPE_MESSAGE(11),
            TYPE_BYTES(12),
            TYPE_UINT32(13),
            TYPE_ENUM(14),
            TYPE_SFIXED32(15),
            TYPE_SFIXED64(16),
            TYPE_SINT32(17),
            TYPE_SINT64(18);
            

            /* renamed from: a */
            public final int f23452a;

            /* renamed from: h.i.g.k$n$d$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$n$d$a.class */
            public static final class C10372a implements C10516z.AbstractC10518b<EnumC10371d> {
            }

            static {
                new C10372a();
                values();
            }

            EnumC10371d(int i) {
                this.f23452a = i;
            }

            /* renamed from: a */
            public static EnumC10371d m12232a(int i) {
                switch (i) {
                    case 1:
                        return TYPE_DOUBLE;
                    case 2:
                        return TYPE_FLOAT;
                    case 3:
                        return TYPE_INT64;
                    case 4:
                        return TYPE_UINT64;
                    case 5:
                        return TYPE_INT32;
                    case 6:
                        return TYPE_FIXED64;
                    case 7:
                        return TYPE_FIXED32;
                    case 8:
                        return TYPE_BOOL;
                    case 9:
                        return TYPE_STRING;
                    case 10:
                        return TYPE_GROUP;
                    case 11:
                        return TYPE_MESSAGE;
                    case 12:
                        return TYPE_BYTES;
                    case 13:
                        return TYPE_UINT32;
                    case 14:
                        return TYPE_ENUM;
                    case 15:
                        return TYPE_SFIXED32;
                    case 16:
                        return TYPE_SFIXED64;
                    case 17:
                        return TYPE_SINT32;
                    case 18:
                        return TYPE_SINT64;
                    default:
                        return null;
                }
            }

            @Deprecated
            /* renamed from: b */
            public static EnumC10371d m12231b(int i) {
                return m12232a(i);
            }

            @Override // p081h.p203i.p401g.C10516z.AbstractC10517a
            public final int getNumber() {
                return this.f23452a;
            }
        }

        public C10366n() {
            this.f23415p = (byte) (-1);
            this.f23405f = "";
            this.f23407h = 1;
            this.f23408i = 1;
            this.f23409j = "";
            this.f23410k = "";
            this.f23411l = "";
            this.f23413n = "";
        }

        public C10366n(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                switch (r) {
                                    case 0:
                                        break;
                                    case 10:
                                        AbstractC10253g c = hVar.mo12918c();
                                        this.f23404e = 1 | this.f23404e;
                                        this.f23405f = c;
                                        continue;
                                    case 18:
                                        AbstractC10253g c2 = hVar.mo12918c();
                                        this.f23404e |= 32;
                                        this.f23410k = c2;
                                        continue;
                                    case 24:
                                        this.f23404e |= 2;
                                        this.f23406g = hVar.mo12908i();
                                        continue;
                                    case 32:
                                        int e = hVar.mo12914e();
                                        if (EnumC10369c.m12233b(e) == null) {
                                            d.m13016a(4, e);
                                            continue;
                                        } else {
                                            this.f23404e |= 4;
                                            this.f23407h = e;
                                        }
                                    case 40:
                                        int e2 = hVar.mo12914e();
                                        if (EnumC10371d.m12231b(e2) == null) {
                                            d.m13016a(5, e2);
                                            continue;
                                        } else {
                                            this.f23404e |= 8;
                                            this.f23408i = e2;
                                        }
                                    case 50:
                                        AbstractC10253g c3 = hVar.mo12918c();
                                        this.f23404e |= 16;
                                        this.f23409j = c3;
                                        continue;
                                    case 58:
                                        AbstractC10253g c4 = hVar.mo12918c();
                                        this.f23404e |= 64;
                                        this.f23411l = c4;
                                        continue;
                                    case 66:
                                        C10374p.C10376b f = (this.f23404e & 512) != 0 ? this.f23414o.mo11826f() : null;
                                        this.f23414o = (C10374p) hVar.mo12921a(C10374p.f23454p, rVar);
                                        if (f != null) {
                                            f.m12200a(this.f23414o);
                                            this.f23414o = f.mo11825E();
                                        }
                                        this.f23404e |= 512;
                                        continue;
                                    case 72:
                                        this.f23404e |= 128;
                                        this.f23412m = hVar.mo12908i();
                                        continue;
                                    case 82:
                                        AbstractC10253g c5 = hVar.mo12918c();
                                        this.f23404e |= 256;
                                        this.f23413n = c5;
                                        continue;
                                    default:
                                        if (!mo11647a(hVar, d, rVar, r)) {
                                            break;
                                        } else {
                                            continue;
                                        }
                                }
                                z = true;
                            } catch (C10222a0 e3) {
                                e3.m13078a(this);
                                throw e3;
                            }
                        } catch (IOException e4) {
                            C10222a0 a0Var = new C10222a0(e4);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10366n(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23415p = (byte) (-1);
        }

        /* renamed from: K */
        public static C10366n m12272K() {
            return f23402q;
        }

        /* renamed from: L */
        public static final C10418l.C10420b m12271L() {
            return C10295k.f23172l;
        }

        /* renamed from: M */
        public static C10368b m12270M() {
            return f23402q.mo11826f();
        }

        /* renamed from: A */
        public boolean m12282A() {
            return (this.f23404e & 64) != 0;
        }

        /* renamed from: B */
        public boolean m12281B() {
            return (this.f23404e & 32) != 0;
        }

        /* renamed from: C */
        public boolean m12280C() {
            return (this.f23404e & 256) != 0;
        }

        /* renamed from: D */
        public boolean m12279D() {
            return (this.f23404e & 4) != 0;
        }

        /* renamed from: E */
        public boolean m12278E() {
            boolean z = true;
            if ((this.f23404e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: F */
        public boolean m12277F() {
            return (this.f23404e & 2) != 0;
        }

        /* renamed from: G */
        public boolean m12276G() {
            return (this.f23404e & 128) != 0;
        }

        /* renamed from: H */
        public boolean m12275H() {
            return (this.f23404e & 512) != 0;
        }

        /* renamed from: I */
        public boolean m12274I() {
            return (this.f23404e & 8) != 0;
        }

        /* renamed from: J */
        public boolean m12273J() {
            return (this.f23404e & 16) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10368b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10368b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23404e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23405f);
            }
            if ((this.f23404e & 32) != 0) {
                AbstractC10482x.m11691a(iVar, 2, this.f23410k);
            }
            if ((this.f23404e & 2) != 0) {
                iVar.mo12804c(3, this.f23406g);
            }
            if ((this.f23404e & 4) != 0) {
                iVar.m12879a(4, this.f23407h);
            }
            if ((this.f23404e & 8) != 0) {
                iVar.m12879a(5, this.f23408i);
            }
            if ((this.f23404e & 16) != 0) {
                AbstractC10482x.m11691a(iVar, 6, this.f23409j);
            }
            if ((this.f23404e & 64) != 0) {
                AbstractC10482x.m11691a(iVar, 7, this.f23411l);
            }
            if ((this.f23404e & 512) != 0) {
                iVar.mo12808b(8, m12246x());
            }
            if ((this.f23404e & 128) != 0) {
                iVar.mo12804c(9, this.f23412m);
            }
            if ((this.f23404e & 256) != 0) {
                AbstractC10482x.m11691a(iVar, 10, this.f23413n);
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10366n mo11818b() {
            return f23402q;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10368b mo11827e() {
            return m12270M();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10366n)) {
                return super.equals(obj);
            }
            C10366n nVar = (C10366n) obj;
            if (m12278E() != nVar.m12278E()) {
                return false;
            }
            if ((m12278E() && !m12249u().equals(nVar.m12249u())) || m12277F() != nVar.m12277F()) {
                return false;
            }
            if ((m12277F() && m12248v() != nVar.m12248v()) || m12279D() != nVar.m12279D()) {
                return false;
            }
            if ((m12279D() && this.f23407h != nVar.f23407h) || m12274I() != nVar.m12274I()) {
                return false;
            }
            if ((m12274I() && this.f23408i != nVar.f23408i) || m12273J() != nVar.m12273J()) {
                return false;
            }
            if ((m12273J() && !m12244z().equals(nVar.m12244z())) || m12281B() != nVar.m12281B()) {
                return false;
            }
            if ((m12281B() && !m12252r().equals(nVar.m12252r())) || m12282A() != nVar.m12282A()) {
                return false;
            }
            if ((m12282A() && !m12253q().equals(nVar.m12253q())) || m12276G() != nVar.m12276G()) {
                return false;
            }
            if ((m12276G() && m12247w() != nVar.m12247w()) || m12280C() != nVar.m12280C()) {
                return false;
            }
            if ((!m12280C() || m12251s().equals(nVar.m12251s())) && m12275H() == nVar.m12275H()) {
                return (!m12275H() || m12246x().equals(nVar.m12246x())) && this.f23817c.equals(nVar.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10368b mo11826f() {
            C10368b bVar;
            if (this == f23402q) {
                bVar = new C10368b();
            } else {
                bVar = new C10368b();
                bVar.m12241a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f23404e & 1) != 0) {
                i2 = 0 + AbstractC10482x.m11694a(1, this.f23405f);
            }
            int i3 = i2;
            if ((this.f23404e & 32) != 0) {
                i3 = i2 + AbstractC10482x.m11694a(2, this.f23410k);
            }
            int i4 = i3;
            if ((this.f23404e & 2) != 0) {
                i4 = i3 + AbstractC10274i.m12838g(3, this.f23406g);
            }
            int i5 = i4;
            if ((this.f23404e & 4) != 0) {
                i5 = i4 + AbstractC10274i.m12846e(4, this.f23407h);
            }
            int i6 = i5;
            if ((this.f23404e & 8) != 0) {
                i6 = i5 + AbstractC10274i.m12846e(5, this.f23408i);
            }
            int i7 = i6;
            if ((this.f23404e & 16) != 0) {
                i7 = i6 + AbstractC10482x.m11694a(6, this.f23409j);
            }
            int i8 = i7;
            if ((this.f23404e & 64) != 0) {
                i8 = i7 + AbstractC10482x.m11694a(7, this.f23411l);
            }
            int i9 = i8;
            if ((this.f23404e & 512) != 0) {
                i9 = i8 + AbstractC10274i.m12840f(8, m12246x());
            }
            int i10 = i9;
            if ((this.f23404e & 128) != 0) {
                i10 = i9 + AbstractC10274i.m12838g(9, this.f23412m);
            }
            int i11 = i10;
            if ((this.f23404e & 256) != 0) {
                i11 = i10 + AbstractC10482x.m11694a(10, this.f23413n);
            }
            int h = i11 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12271L().hashCode();
            int i2 = hashCode;
            if (m12278E()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12249u().hashCode();
            }
            int i3 = i2;
            if (m12277F()) {
                i3 = (((i2 * 37) + 3) * 53) + m12248v();
            }
            int i4 = i3;
            if (m12279D()) {
                i4 = (((i3 * 37) + 4) * 53) + this.f23407h;
            }
            int i5 = i4;
            if (m12274I()) {
                i5 = (((i4 * 37) + 5) * 53) + this.f23408i;
            }
            int i6 = i5;
            if (m12273J()) {
                i6 = (((i5 * 37) + 6) * 53) + m12244z().hashCode();
            }
            int i7 = i6;
            if (m12281B()) {
                i7 = (((i6 * 37) + 2) * 53) + m12252r().hashCode();
            }
            int i8 = i7;
            if (m12282A()) {
                i8 = (((i7 * 37) + 7) * 53) + m12253q().hashCode();
            }
            int i9 = i8;
            if (m12276G()) {
                i9 = (((i8 * 37) + 9) * 53) + m12247w();
            }
            int i10 = i9;
            if (m12280C()) {
                i10 = (((i9 * 37) + 10) * 53) + m12251s().hashCode();
            }
            int i11 = i10;
            if (m12275H()) {
                i11 = (((i10 * 37) + 8) * 53) + m12246x().hashCode();
            }
            int hashCode2 = (i11 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23415p;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m12275H() || m12246x().isInitialized()) {
                this.f23415p = (byte) 1;
                return true;
            }
            this.f23415p = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10366n> mo11677j() {
            return f23403r;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23173m;
            gVar.m11629a(C10366n.class, C10368b.class);
            return gVar;
        }

        /* renamed from: q */
        public String m12253q() {
            Object obj = this.f23411l;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23411l = s;
            }
            return s;
        }

        /* renamed from: r */
        public String m12252r() {
            Object obj = this.f23410k;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23410k = s;
            }
            return s;
        }

        /* renamed from: s */
        public String m12251s() {
            Object obj = this.f23413n;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23413n = s;
            }
            return s;
        }

        /* renamed from: t */
        public EnumC10369c m12250t() {
            EnumC10369c b = EnumC10369c.m12233b(this.f23407h);
            EnumC10369c cVar = b;
            if (b == null) {
                cVar = EnumC10369c.LABEL_OPTIONAL;
            }
            return cVar;
        }

        /* renamed from: u */
        public String m12249u() {
            Object obj = this.f23405f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23405f = s;
            }
            return s;
        }

        /* renamed from: v */
        public int m12248v() {
            return this.f23406g;
        }

        /* renamed from: w */
        public int m12247w() {
            return this.f23412m;
        }

        /* renamed from: x */
        public C10374p m12246x() {
            C10374p pVar = this.f23414o;
            C10374p pVar2 = pVar;
            if (pVar == null) {
                pVar2 = C10374p.m12222I();
            }
            return pVar2;
        }

        /* renamed from: y */
        public EnumC10371d m12245y() {
            EnumC10371d b = EnumC10371d.m12231b(this.f23408i);
            EnumC10371d dVar = b;
            if (b == null) {
                dVar = EnumC10371d.TYPE_DOUBLE;
            }
            return dVar;
        }

        /* renamed from: z */
        public String m12244z() {
            Object obj = this.f23409j;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23409j = s;
            }
            return s;
        }
    }

    /* renamed from: h.i.g.k$o */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$o.class */
    public interface AbstractC10373o extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$p */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$p.class */
    public static final class C10374p extends AbstractC10482x.AbstractC10488e<C10374p> implements AbstractC10381q {

        /* renamed from: o */
        public static final C10374p f23453o = new C10374p();
        @Deprecated

        /* renamed from: p */
        public static final AbstractC10462s0<C10374p> f23454p = new C10375a();

        /* renamed from: f */
        public int f23455f;

        /* renamed from: g */
        public int f23456g;

        /* renamed from: h */
        public boolean f23457h;

        /* renamed from: i */
        public int f23458i;

        /* renamed from: j */
        public boolean f23459j;

        /* renamed from: k */
        public boolean f23460k;

        /* renamed from: l */
        public boolean f23461l;

        /* renamed from: m */
        public List<C10357l0> f23462m;

        /* renamed from: n */
        public byte f23463n;

        /* renamed from: h.i.g.k$p$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$p$a.class */
        public static final class C10375a extends AbstractC10235c<C10374p> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10374p mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10374p(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$p$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$p$b.class */
        public static final class C10376b extends AbstractC10482x.AbstractC10487d<C10374p, C10376b> implements AbstractC10381q {

            /* renamed from: f */
            public int f23464f;

            /* renamed from: g */
            public int f23465g;

            /* renamed from: h */
            public boolean f23466h;

            /* renamed from: i */
            public int f23467i;

            /* renamed from: j */
            public boolean f23468j;

            /* renamed from: k */
            public boolean f23469k;

            /* renamed from: l */
            public boolean f23470l;

            /* renamed from: m */
            public List<C10357l0> f23471m;

            /* renamed from: n */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23472n;

            public C10376b() {
                this.f23465g = 0;
                this.f23467i = 0;
                this.f23471m = Collections.emptyList();
                m12193p();
            }

            public C10376b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23465g = 0;
                this.f23467i = 0;
                this.f23471m = Collections.emptyList();
                m12193p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10374p mo11825E() {
                C10374p pVar = new C10374p(this);
                int i = this.f23464f;
                int i2 = (i & 1) != 0 ? 1 : 0;
                pVar.f23456g = this.f23465g;
                int i3 = i2;
                if ((i & 2) != 0) {
                    pVar.f23457h = this.f23466h;
                    i3 = i2 | 2;
                }
                int i4 = i3;
                if ((i & 4) != 0) {
                    i4 = i3 | 4;
                }
                pVar.f23458i = this.f23467i;
                int i5 = i4;
                if ((i & 8) != 0) {
                    pVar.f23459j = this.f23468j;
                    i5 = i4 | 8;
                }
                int i6 = i5;
                if ((i & 16) != 0) {
                    pVar.f23460k = this.f23469k;
                    i6 = i5 | 16;
                }
                int i7 = i6;
                if ((i & 32) != 0) {
                    pVar.f23461l = this.f23470l;
                    i7 = i6 | 32;
                }
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23472n;
                if (w0Var == null) {
                    if ((this.f23464f & 64) != 0) {
                        this.f23471m = Collections.unmodifiableList(this.f23471m);
                        this.f23464f &= -65;
                    }
                    pVar.f23462m = this.f23471m;
                } else {
                    pVar.f23462m = w0Var.m11704b();
                }
                pVar.f23455f = i7;
                m11658j();
                return pVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10376b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10374p.C10376b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$p> r0 = p081h.p203i.p401g.C10295k.C10374p.f23454p     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$p r0 = (p081h.p203i.p401g.C10295k.C10374p) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$p$b r0 = r0.m12200a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$p r0 = (p081h.p203i.p401g.C10295k.C10374p) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$p$b r0 = r0.m12200a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10374p.C10376b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$p$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10376b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10374p) {
                    m12200a((C10374p) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10376b m12202a(EnumC10377c cVar) {
                if (cVar != null) {
                    this.f23464f |= 1;
                    this.f23465g = cVar.getNumber();
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            /* renamed from: a */
            public C10376b m12201a(EnumC10379d dVar) {
                if (dVar != null) {
                    this.f23464f |= 4;
                    this.f23467i = dVar.getNumber();
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            /* renamed from: a */
            public C10376b m12200a(C10374p pVar) {
                if (pVar == C10374p.m12222I()) {
                    return this;
                }
                if (pVar.m12228C()) {
                    m12202a(pVar.m12208u());
                }
                if (pVar.m12224G()) {
                    m12197c(pVar.m12204y());
                }
                if (pVar.m12226E()) {
                    m12201a(pVar.m12206w());
                }
                if (pVar.m12225F()) {
                    m12198b(pVar.m12205x());
                }
                if (pVar.m12227D()) {
                    m12199a(pVar.m12207v());
                }
                if (pVar.m12223H()) {
                    m12196d(pVar.m12229B());
                }
                if (this.f23472n == null) {
                    if (!pVar.f23462m.isEmpty()) {
                        if (this.f23471m.isEmpty()) {
                            this.f23471m = pVar.f23462m;
                            this.f23464f &= -65;
                        } else {
                            m12195n();
                            this.f23471m.addAll(pVar.f23462m);
                        }
                        m11657k();
                    }
                } else if (!pVar.f23462m.isEmpty()) {
                    if (this.f23472n.m11700f()) {
                        this.f23472n.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23472n = null;
                        this.f23471m = pVar.f23462m;
                        this.f23464f &= -65;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12194o();
                        }
                        this.f23472n = w0Var;
                    } else {
                        this.f23472n.m11705a(pVar.f23462m);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) pVar);
                mo11668b(pVar.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10376b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10376b) super.mo11655a(gVar, obj);
            }

            /* renamed from: a */
            public C10376b m12199a(boolean z) {
                this.f23464f |= 16;
                this.f23469k = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10376b mo11668b(C10247f1 f1Var) {
                return (C10376b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10376b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10376b) super.mo11652b(gVar, obj);
            }

            /* renamed from: b */
            public C10376b m12198b(boolean z) {
                this.f23464f |= 8;
                this.f23468j = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10374p mo11818b() {
                return C10374p.m12222I();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10374p build() {
                C10374p E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            /* renamed from: c */
            public C10376b m12197c(boolean z) {
                this.f23464f |= 2;
                this.f23466h = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23138D;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10376b clone() {
                return (C10376b) super.clone();
            }

            /* renamed from: d */
            public C10376b m12196d(boolean z) {
                this.f23464f |= 32;
                this.f23470l = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23139E;
                gVar.m11629a(C10374p.class, C10376b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m12195n() {
                if ((this.f23464f & 64) == 0) {
                    this.f23471m = new ArrayList(this.f23471m);
                    this.f23464f |= 64;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m12194o() {
                if (this.f23472n == null) {
                    this.f23472n = new C10478w0<>(this.f23471m, (this.f23464f & 64) != 0, m11661g(), m11659i());
                    this.f23471m = null;
                }
                return this.f23472n;
            }

            /* renamed from: p */
            public final void m12193p() {
                if (AbstractC10482x.f23816d) {
                    m12194o();
                }
            }
        }

        /* renamed from: h.i.g.k$p$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$p$c.class */
        public enum EnumC10377c implements AbstractC10469u0 {
            STRING(0),
            CORD(1),
            STRING_PIECE(2);
            

            /* renamed from: a */
            public final int f23477a;

            /* renamed from: h.i.g.k$p$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$p$c$a.class */
            public static final class C10378a implements C10516z.AbstractC10518b<EnumC10377c> {
            }

            static {
                new C10378a();
                values();
            }

            EnumC10377c(int i) {
                this.f23477a = i;
            }

            /* renamed from: a */
            public static EnumC10377c m12192a(int i) {
                if (i == 0) {
                    return STRING;
                }
                if (i == 1) {
                    return CORD;
                }
                if (i != 2) {
                    return null;
                }
                return STRING_PIECE;
            }

            @Deprecated
            /* renamed from: b */
            public static EnumC10377c m12191b(int i) {
                return m12192a(i);
            }

            @Override // p081h.p203i.p401g.C10516z.AbstractC10517a
            public final int getNumber() {
                return this.f23477a;
            }
        }

        /* renamed from: h.i.g.k$p$d */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$p$d.class */
        public enum EnumC10379d implements AbstractC10469u0 {
            JS_NORMAL(0),
            JS_STRING(1),
            JS_NUMBER(2);
            

            /* renamed from: a */
            public final int f23482a;

            /* renamed from: h.i.g.k$p$d$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$p$d$a.class */
            public static final class C10380a implements C10516z.AbstractC10518b<EnumC10379d> {
            }

            static {
                new C10380a();
                values();
            }

            EnumC10379d(int i) {
                this.f23482a = i;
            }

            /* renamed from: a */
            public static EnumC10379d m12190a(int i) {
                if (i == 0) {
                    return JS_NORMAL;
                }
                if (i == 1) {
                    return JS_STRING;
                }
                if (i != 2) {
                    return null;
                }
                return JS_NUMBER;
            }

            @Deprecated
            /* renamed from: b */
            public static EnumC10379d m12189b(int i) {
                return m12190a(i);
            }

            @Override // p081h.p203i.p401g.C10516z.AbstractC10517a
            public final int getNumber() {
                return this.f23482a;
            }
        }

        public C10374p() {
            this.f23463n = (byte) (-1);
            this.f23456g = 0;
            this.f23458i = 0;
            this.f23462m = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10374p(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 8) {
                                    int e = hVar.mo12914e();
                                    if (EnumC10377c.m12191b(e) == null) {
                                        d.m13016a(1, e);
                                    } else {
                                        this.f23455f = 1 | this.f23455f;
                                        this.f23456g = e;
                                    }
                                } else if (r == 16) {
                                    this.f23455f |= 2;
                                    this.f23457h = hVar.mo12920b();
                                } else if (r == 24) {
                                    this.f23455f |= 16;
                                    this.f23460k = hVar.mo12920b();
                                } else if (r == 40) {
                                    this.f23455f |= 8;
                                    this.f23459j = hVar.mo12920b();
                                } else if (r == 48) {
                                    int e2 = hVar.mo12914e();
                                    if (EnumC10379d.m12189b(e2) == null) {
                                        d.m13016a(6, e2);
                                    } else {
                                        this.f23455f |= 4;
                                        this.f23458i = e2;
                                    }
                                } else if (r == 80) {
                                    this.f23455f |= 32;
                                    this.f23461l = hVar.mo12920b();
                                } else if (r == 7994) {
                                    i = i;
                                    if ((i & 64) == 0) {
                                        this.f23462m = new ArrayList();
                                        i |= 64;
                                    }
                                    this.f23462m.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e3) {
                            e3.m13078a(this);
                            throw e3;
                        } catch (IOException e4) {
                            C10222a0 a0Var = new C10222a0(e4);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 64) != 0) {
                            this.f23462m = Collections.unmodifiableList(this.f23462m);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10374p(AbstractC10482x.AbstractC10487d<C10374p, ?> dVar) {
            super(dVar);
            this.f23463n = (byte) (-1);
        }

        /* renamed from: I */
        public static C10374p m12222I() {
            return f23453o;
        }

        /* renamed from: J */
        public static final C10418l.C10420b m12221J() {
            return C10295k.f23138D;
        }

        /* renamed from: K */
        public static C10376b m12220K() {
            return f23453o.mo11826f();
        }

        /* renamed from: b */
        public static C10376b m12214b(C10374p pVar) {
            C10376b f = f23453o.mo11826f();
            f.m12200a(pVar);
            return f;
        }

        /* renamed from: A */
        public List<C10357l0> m12230A() {
            return this.f23462m;
        }

        /* renamed from: B */
        public boolean m12229B() {
            return this.f23461l;
        }

        /* renamed from: C */
        public boolean m12228C() {
            boolean z = true;
            if ((this.f23455f & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: D */
        public boolean m12227D() {
            return (this.f23455f & 16) != 0;
        }

        /* renamed from: E */
        public boolean m12226E() {
            return (this.f23455f & 4) != 0;
        }

        /* renamed from: F */
        public boolean m12225F() {
            return (this.f23455f & 8) != 0;
        }

        /* renamed from: G */
        public boolean m12224G() {
            return (this.f23455f & 2) != 0;
        }

        /* renamed from: H */
        public boolean m12223H() {
            return (this.f23455f & 32) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10376b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10376b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            if ((this.f23455f & 1) != 0) {
                iVar.m12879a(1, this.f23456g);
            }
            if ((this.f23455f & 2) != 0) {
                iVar.mo12817a(2, this.f23457h);
            }
            if ((this.f23455f & 16) != 0) {
                iVar.mo12817a(3, this.f23460k);
            }
            if ((this.f23455f & 8) != 0) {
                iVar.mo12817a(5, this.f23459j);
            }
            if ((this.f23455f & 4) != 0) {
                iVar.m12879a(6, this.f23458i);
            }
            if ((this.f23455f & 32) != 0) {
                iVar.mo12817a(10, this.f23461l);
            }
            for (int i = 0; i < this.f23462m.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23462m.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        /* renamed from: b */
        public C10357l0 m12215b(int i) {
            return this.f23462m.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10374p mo11818b() {
            return f23453o;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10376b mo11827e() {
            return m12220K();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10374p)) {
                return super.equals(obj);
            }
            C10374p pVar = (C10374p) obj;
            if (m12228C() != pVar.m12228C()) {
                return false;
            }
            if ((m12228C() && this.f23456g != pVar.f23456g) || m12224G() != pVar.m12224G()) {
                return false;
            }
            if ((m12224G() && m12204y() != pVar.m12204y()) || m12226E() != pVar.m12226E()) {
                return false;
            }
            if ((m12226E() && this.f23458i != pVar.f23458i) || m12225F() != pVar.m12225F()) {
                return false;
            }
            if ((m12225F() && m12205x() != pVar.m12205x()) || m12227D() != pVar.m12227D()) {
                return false;
            }
            if ((!m12227D() || m12207v() == pVar.m12207v()) && m12223H() == pVar.m12223H()) {
                return (!m12223H() || m12229B() == pVar.m12229B()) && m12230A().equals(pVar.m12230A()) && this.f23817c.equals(pVar.f23817c) && m11638s().equals(pVar.m11638s());
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10376b mo11826f() {
            C10376b bVar;
            if (this == f23453o) {
                bVar = new C10376b();
            } else {
                bVar = new C10376b();
                bVar.m12200a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int e = (this.f23455f & 1) != 0 ? AbstractC10274i.m12846e(1, this.f23456g) + 0 : 0;
            int i2 = e;
            if ((this.f23455f & 2) != 0) {
                i2 = e + AbstractC10274i.m12865b(2, this.f23457h);
            }
            int i3 = i2;
            if ((this.f23455f & 16) != 0) {
                i3 = i2 + AbstractC10274i.m12865b(3, this.f23460k);
            }
            int i4 = i3;
            if ((this.f23455f & 8) != 0) {
                i4 = i3 + AbstractC10274i.m12865b(5, this.f23459j);
            }
            int i5 = i4;
            if ((this.f23455f & 4) != 0) {
                i5 = i4 + AbstractC10274i.m12846e(6, this.f23458i);
            }
            int i6 = i5;
            int i7 = 0;
            if ((this.f23455f & 32) != 0) {
                i6 = i5 + AbstractC10274i.m12865b(10, this.f23461l);
                i7 = 0;
            }
            while (i7 < this.f23462m.size()) {
                i6 += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23462m.get(i7));
                i7++;
            }
            int r = i6 + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12221J().hashCode();
            int i2 = hashCode;
            if (m12228C()) {
                i2 = (((hashCode * 37) + 1) * 53) + this.f23456g;
            }
            int i3 = i2;
            if (m12224G()) {
                i3 = (((i2 * 37) + 2) * 53) + C10516z.m11543a(m12204y());
            }
            int i4 = i3;
            if (m12226E()) {
                i4 = (((i3 * 37) + 6) * 53) + this.f23458i;
            }
            int i5 = i4;
            if (m12225F()) {
                i5 = (((i4 * 37) + 5) * 53) + C10516z.m11543a(m12205x());
            }
            int i6 = i5;
            if (m12227D()) {
                i6 = (((i5 * 37) + 3) * 53) + C10516z.m11543a(m12207v());
            }
            int i7 = i6;
            if (m12223H()) {
                i7 = (((i6 * 37) + 10) * 53) + C10516z.m11543a(m12229B());
            }
            int i8 = i7;
            if (m12203z() > 0) {
                i8 = (((i7 * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m12230A().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i8, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23463n;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12203z(); i++) {
                if (!m12215b(i).isInitialized()) {
                    this.f23463n = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23463n = (byte) 0;
                return false;
            }
            this.f23463n = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10374p> mo11677j() {
            return f23454p;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23139E;
            gVar.m11629a(C10374p.class, C10376b.class);
            return gVar;
        }

        /* renamed from: u */
        public EnumC10377c m12208u() {
            EnumC10377c b = EnumC10377c.m12191b(this.f23456g);
            EnumC10377c cVar = b;
            if (b == null) {
                cVar = EnumC10377c.STRING;
            }
            return cVar;
        }

        /* renamed from: v */
        public boolean m12207v() {
            return this.f23460k;
        }

        /* renamed from: w */
        public EnumC10379d m12206w() {
            EnumC10379d b = EnumC10379d.m12189b(this.f23458i);
            EnumC10379d dVar = b;
            if (b == null) {
                dVar = EnumC10379d.JS_NORMAL;
            }
            return dVar;
        }

        /* renamed from: x */
        public boolean m12205x() {
            return this.f23459j;
        }

        /* renamed from: y */
        public boolean m12204y() {
            return this.f23457h;
        }

        /* renamed from: z */
        public int m12203z() {
            return this.f23462m.size();
        }
    }

    /* renamed from: h.i.g.k$q */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$q.class */
    public interface AbstractC10381q extends AbstractC10482x.AbstractC10490f<C10374p> {
    }

    /* renamed from: h.i.g.k$r */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$r.class */
    public static final class C10382r extends AbstractC10482x implements AbstractC10385s {

        /* renamed from: s */
        public static final C10382r f23483s = new C10382r();
        @Deprecated

        /* renamed from: t */
        public static final AbstractC10462s0<C10382r> f23484t = new C10383a();

        /* renamed from: e */
        public int f23485e;

        /* renamed from: f */
        public volatile Object f23486f;

        /* renamed from: g */
        public volatile Object f23487g;

        /* renamed from: h */
        public AbstractC10243e0 f23488h;

        /* renamed from: i */
        public C10516z.AbstractC10519c f23489i;

        /* renamed from: j */
        public C10516z.AbstractC10519c f23490j;

        /* renamed from: k */
        public List<C10298b> f23491k;

        /* renamed from: l */
        public List<C10314d> f23492l;

        /* renamed from: m */
        public List<C10329f0> f23493m;

        /* renamed from: n */
        public List<C10366n> f23494n;

        /* renamed from: o */
        public C10386t f23495o;

        /* renamed from: p */
        public C10345j0 f23496p;

        /* renamed from: q */
        public volatile Object f23497q;

        /* renamed from: r */
        public byte f23498r;

        /* renamed from: h.i.g.k$r$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$r$a.class */
        public static final class C10383a extends AbstractC10235c<C10382r> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10382r mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10382r(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$r$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$r$b.class */
        public static final class C10384b extends AbstractC10482x.AbstractC10484b<C10384b> implements AbstractC10385s {

            /* renamed from: e */
            public int f23499e;

            /* renamed from: f */
            public Object f23500f;

            /* renamed from: g */
            public Object f23501g;

            /* renamed from: h */
            public AbstractC10243e0 f23502h;

            /* renamed from: i */
            public C10516z.AbstractC10519c f23503i;

            /* renamed from: j */
            public C10516z.AbstractC10519c f23504j;

            /* renamed from: k */
            public List<C10298b> f23505k;

            /* renamed from: l */
            public C10478w0<C10298b, C10298b.C10300b, AbstractC10312c> f23506l;

            /* renamed from: m */
            public List<C10314d> f23507m;

            /* renamed from: n */
            public C10478w0<C10314d, C10314d.C10316b, AbstractC10324e> f23508n;

            /* renamed from: o */
            public List<C10329f0> f23509o;

            /* renamed from: p */
            public C10478w0<C10329f0, C10329f0.C10331b, AbstractC10333g0> f23510p;

            /* renamed from: q */
            public List<C10366n> f23511q;

            /* renamed from: r */
            public C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> f23512r;

            /* renamed from: s */
            public C10386t f23513s;

            /* renamed from: t */
            public C10506x0<C10386t, C10386t.C10388b, AbstractC10391u> f23514t;

            /* renamed from: u */
            public C10345j0 f23515u;

            /* renamed from: v */
            public C10506x0<C10345j0, C10345j0.C10347b, AbstractC10353k0> f23516v;

            /* renamed from: w */
            public Object f23517w;

            public C10384b() {
                this.f23500f = "";
                this.f23501g = "";
                this.f23502h = C10240d0.f23071d;
                this.f23503i = AbstractC10482x.m11675o();
                this.f23504j = AbstractC10482x.m11675o();
                this.f23505k = Collections.emptyList();
                this.f23507m = Collections.emptyList();
                this.f23509o = Collections.emptyList();
                this.f23511q = Collections.emptyList();
                this.f23517w = "";
                m12131A();
            }

            public C10384b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23500f = "";
                this.f23501g = "";
                this.f23502h = C10240d0.f23071d;
                this.f23503i = AbstractC10482x.m11675o();
                this.f23504j = AbstractC10482x.m11675o();
                this.f23505k = Collections.emptyList();
                this.f23507m = Collections.emptyList();
                this.f23509o = Collections.emptyList();
                this.f23511q = Collections.emptyList();
                this.f23517w = "";
                m12131A();
            }

            /* renamed from: A */
            public final void m12131A() {
                if (AbstractC10482x.f23816d) {
                    m12115u();
                    m12117s();
                    m12112x();
                    m12116t();
                    m12113w();
                    m12110z();
                }
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10382r mo11825E() {
                C10382r rVar = new C10382r(this);
                int i = this.f23499e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                rVar.f23486f = this.f23500f;
                int i3 = i2;
                if ((i & 2) != 0) {
                    i3 = i2 | 2;
                }
                rVar.f23487g = this.f23501g;
                if ((this.f23499e & 4) != 0) {
                    this.f23502h = this.f23502h.mo12887o();
                    this.f23499e &= -5;
                }
                rVar.f23488h = this.f23502h;
                if ((this.f23499e & 8) != 0) {
                    this.f23503i.mo11536d();
                    this.f23499e &= -9;
                }
                rVar.f23489i = this.f23503i;
                if ((this.f23499e & 16) != 0) {
                    this.f23504j.mo11536d();
                    this.f23499e &= -17;
                }
                rVar.f23490j = this.f23504j;
                C10478w0<C10298b, C10298b.C10300b, AbstractC10312c> w0Var = this.f23506l;
                if (w0Var == null) {
                    if ((this.f23499e & 32) != 0) {
                        this.f23505k = Collections.unmodifiableList(this.f23505k);
                        this.f23499e &= -33;
                    }
                    rVar.f23491k = this.f23505k;
                } else {
                    rVar.f23491k = w0Var.m11704b();
                }
                C10478w0<C10314d, C10314d.C10316b, AbstractC10324e> w0Var2 = this.f23508n;
                if (w0Var2 == null) {
                    if ((this.f23499e & 64) != 0) {
                        this.f23507m = Collections.unmodifiableList(this.f23507m);
                        this.f23499e &= -65;
                    }
                    rVar.f23492l = this.f23507m;
                } else {
                    rVar.f23492l = w0Var2.m11704b();
                }
                C10478w0<C10329f0, C10329f0.C10331b, AbstractC10333g0> w0Var3 = this.f23510p;
                if (w0Var3 == null) {
                    if ((this.f23499e & 128) != 0) {
                        this.f23509o = Collections.unmodifiableList(this.f23509o);
                        this.f23499e &= -129;
                    }
                    rVar.f23493m = this.f23509o;
                } else {
                    rVar.f23493m = w0Var3.m11704b();
                }
                C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> w0Var4 = this.f23512r;
                if (w0Var4 == null) {
                    if ((this.f23499e & 256) != 0) {
                        this.f23511q = Collections.unmodifiableList(this.f23511q);
                        this.f23499e &= -257;
                    }
                    rVar.f23494n = this.f23511q;
                } else {
                    rVar.f23494n = w0Var4.m11704b();
                }
                int i4 = i3;
                if ((i & 512) != 0) {
                    C10506x0<C10386t, C10386t.C10388b, AbstractC10391u> x0Var = this.f23514t;
                    if (x0Var == null) {
                        rVar.f23495o = this.f23513s;
                    } else {
                        rVar.f23495o = x0Var.m11583b();
                    }
                    i4 = i3 | 4;
                }
                int i5 = i4;
                if ((i & 1024) != 0) {
                    C10506x0<C10345j0, C10345j0.C10347b, AbstractC10353k0> x0Var2 = this.f23516v;
                    if (x0Var2 == null) {
                        rVar.f23496p = this.f23515u;
                    } else {
                        rVar.f23496p = x0Var2.m11583b();
                    }
                    i5 = i4 | 8;
                }
                int i6 = i5;
                if ((i & 2048) != 0) {
                    i6 = i5 | 16;
                }
                rVar.f23497q = this.f23517w;
                rVar.f23485e = i6;
                m11658j();
                return rVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10384b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10382r.C10384b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$r> r0 = p081h.p203i.p401g.C10295k.C10382r.f23484t     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$r r0 = (p081h.p203i.p401g.C10295k.C10382r) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$r$b r0 = r0.m12128a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$r r0 = (p081h.p203i.p401g.C10295k.C10382r) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$r$b r0 = r0.m12128a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10382r.C10384b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$r$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10384b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10382r) {
                    m12128a((C10382r) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10384b m12130a(C10298b bVar) {
                C10478w0<C10298b, C10298b.C10300b, AbstractC10312c> w0Var = this.f23506l;
                if (w0Var != null) {
                    w0Var.m11706a((C10478w0<C10298b, C10298b.C10300b, AbstractC10312c>) bVar);
                } else if (bVar != null) {
                    m12121o();
                    this.f23505k.add(bVar);
                    m11657k();
                } else {
                    throw new NullPointerException();
                }
                return this;
            }

            /* renamed from: a */
            public C10384b m12129a(C10345j0 j0Var) {
                C10345j0 j0Var2;
                C10506x0<C10345j0, C10345j0.C10347b, AbstractC10353k0> x0Var = this.f23516v;
                if (x0Var == null) {
                    if ((this.f23499e & 1024) == 0 || (j0Var2 = this.f23515u) == null || j0Var2 == C10345j0.m12382s()) {
                        this.f23515u = j0Var;
                    } else {
                        C10345j0.C10347b b = C10345j0.m12385b(this.f23515u);
                        b.m12379a(j0Var);
                        this.f23515u = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(j0Var);
                }
                this.f23499e |= 1024;
                return this;
            }

            /* renamed from: a */
            public C10384b m12128a(C10382r rVar) {
                if (rVar == C10382r.m12174O()) {
                    return this;
                }
                if (rVar.m12179J()) {
                    this.f23499e |= 1;
                    this.f23500f = rVar.f23486f;
                    m11657k();
                }
                if (rVar.m12177L()) {
                    this.f23499e |= 2;
                    this.f23501g = rVar.f23487g;
                    m11657k();
                }
                if (!rVar.f23488h.isEmpty()) {
                    if (this.f23502h.isEmpty()) {
                        this.f23502h = rVar.f23488h;
                        this.f23499e &= -5;
                    } else {
                        m12124l();
                        this.f23502h.addAll(rVar.f23488h);
                    }
                    m11657k();
                }
                if (!rVar.f23489i.isEmpty()) {
                    if (this.f23503i.isEmpty()) {
                        this.f23503i = rVar.f23489i;
                        this.f23499e &= -9;
                    } else {
                        m12120p();
                        this.f23503i.addAll(rVar.f23489i);
                    }
                    m11657k();
                }
                if (!rVar.f23490j.isEmpty()) {
                    if (this.f23504j.isEmpty()) {
                        this.f23504j = rVar.f23490j;
                        this.f23499e &= -17;
                    } else {
                        m12118r();
                        this.f23504j.addAll(rVar.f23490j);
                    }
                    m11657k();
                }
                C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> w0Var = null;
                if (this.f23506l == null) {
                    if (!rVar.f23491k.isEmpty()) {
                        if (this.f23505k.isEmpty()) {
                            this.f23505k = rVar.f23491k;
                            this.f23499e &= -33;
                        } else {
                            m12121o();
                            this.f23505k.addAll(rVar.f23491k);
                        }
                        m11657k();
                    }
                } else if (!rVar.f23491k.isEmpty()) {
                    if (this.f23506l.m11700f()) {
                        this.f23506l.m11703c();
                        this.f23506l = null;
                        this.f23505k = rVar.f23491k;
                        this.f23499e &= -33;
                        this.f23506l = AbstractC10482x.f23816d ? m12115u() : null;
                    } else {
                        this.f23506l.m11705a(rVar.f23491k);
                    }
                }
                if (this.f23508n == null) {
                    if (!rVar.f23492l.isEmpty()) {
                        if (this.f23507m.isEmpty()) {
                            this.f23507m = rVar.f23492l;
                            this.f23499e &= -65;
                        } else {
                            m12123m();
                            this.f23507m.addAll(rVar.f23492l);
                        }
                        m11657k();
                    }
                } else if (!rVar.f23492l.isEmpty()) {
                    if (this.f23508n.m11700f()) {
                        this.f23508n.m11703c();
                        this.f23508n = null;
                        this.f23507m = rVar.f23492l;
                        this.f23499e &= -65;
                        this.f23508n = AbstractC10482x.f23816d ? m12117s() : null;
                    } else {
                        this.f23508n.m11705a(rVar.f23492l);
                    }
                }
                if (this.f23510p == null) {
                    if (!rVar.f23493m.isEmpty()) {
                        if (this.f23509o.isEmpty()) {
                            this.f23509o = rVar.f23493m;
                            this.f23499e &= -129;
                        } else {
                            m12119q();
                            this.f23509o.addAll(rVar.f23493m);
                        }
                        m11657k();
                    }
                } else if (!rVar.f23493m.isEmpty()) {
                    if (this.f23510p.m11700f()) {
                        this.f23510p.m11703c();
                        this.f23510p = null;
                        this.f23509o = rVar.f23493m;
                        this.f23499e &= -129;
                        this.f23510p = AbstractC10482x.f23816d ? m12112x() : null;
                    } else {
                        this.f23510p.m11705a(rVar.f23493m);
                    }
                }
                if (this.f23512r == null) {
                    if (!rVar.f23494n.isEmpty()) {
                        if (this.f23511q.isEmpty()) {
                            this.f23511q = rVar.f23494n;
                            this.f23499e &= -257;
                        } else {
                            m12122n();
                            this.f23511q.addAll(rVar.f23494n);
                        }
                        m11657k();
                    }
                } else if (!rVar.f23494n.isEmpty()) {
                    if (this.f23512r.m11700f()) {
                        this.f23512r.m11703c();
                        this.f23512r = null;
                        this.f23511q = rVar.f23494n;
                        this.f23499e &= -257;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12116t();
                        }
                        this.f23512r = w0Var;
                    } else {
                        this.f23512r.m11705a(rVar.f23494n);
                    }
                }
                if (rVar.m12178K()) {
                    m12127a(rVar.m12132z());
                }
                if (rVar.m12176M()) {
                    m12129a(rVar.m12183F());
                }
                if (rVar.m12175N()) {
                    this.f23499e |= 2048;
                    this.f23517w = rVar.f23497q;
                    m11657k();
                }
                mo11668b(rVar.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10384b m12127a(C10386t tVar) {
                C10386t tVar2;
                C10506x0<C10386t, C10386t.C10388b, AbstractC10391u> x0Var = this.f23514t;
                if (x0Var == null) {
                    if ((this.f23499e & 512) == 0 || (tVar2 = this.f23513s) == null || tVar2 == C10386t.m12039k0()) {
                        this.f23513s = tVar;
                    } else {
                        C10386t.C10388b l = C10386t.m12038l(this.f23513s);
                        l.m12028a(tVar);
                        this.f23513s = l.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(tVar);
                }
                this.f23499e |= 512;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10384b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10384b mo11668b(C10247f1 f1Var) {
                return (C10384b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10384b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            /* renamed from: b */
            public C10384b m12126b(String str) {
                if (str != null) {
                    this.f23499e |= 1;
                    this.f23500f = str;
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10382r mo11818b() {
                return C10382r.m12174O();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10382r build() {
                C10382r E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            /* renamed from: c */
            public C10384b m12125c(String str) {
                if (str != null) {
                    this.f23499e |= 2;
                    this.f23501g = str;
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23162b;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10384b clone() {
                return (C10384b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23163c;
                gVar.m11629a(C10382r.class, C10384b.class);
                return gVar;
            }

            /* renamed from: l */
            public final void m12124l() {
                if ((this.f23499e & 4) == 0) {
                    this.f23502h = new C10240d0(this.f23502h);
                    this.f23499e |= 4;
                }
            }

            /* renamed from: m */
            public final void m12123m() {
                if ((this.f23499e & 64) == 0) {
                    this.f23507m = new ArrayList(this.f23507m);
                    this.f23499e |= 64;
                }
            }

            /* renamed from: n */
            public final void m12122n() {
                if ((this.f23499e & 256) == 0) {
                    this.f23511q = new ArrayList(this.f23511q);
                    this.f23499e |= 256;
                }
            }

            /* renamed from: o */
            public final void m12121o() {
                if ((this.f23499e & 32) == 0) {
                    this.f23505k = new ArrayList(this.f23505k);
                    this.f23499e |= 32;
                }
            }

            /* renamed from: p */
            public final void m12120p() {
                if ((this.f23499e & 8) == 0) {
                    this.f23503i = AbstractC10482x.m11686a(this.f23503i);
                    this.f23499e |= 8;
                }
            }

            /* renamed from: q */
            public final void m12119q() {
                if ((this.f23499e & 128) == 0) {
                    this.f23509o = new ArrayList(this.f23509o);
                    this.f23499e |= 128;
                }
            }

            /* renamed from: r */
            public final void m12118r() {
                if ((this.f23499e & 16) == 0) {
                    this.f23504j = AbstractC10482x.m11686a(this.f23504j);
                    this.f23499e |= 16;
                }
            }

            /* renamed from: s */
            public final C10478w0<C10314d, C10314d.C10316b, AbstractC10324e> m12117s() {
                if (this.f23508n == null) {
                    this.f23508n = new C10478w0<>(this.f23507m, (this.f23499e & 64) != 0, m11661g(), m11659i());
                    this.f23507m = null;
                }
                return this.f23508n;
            }

            /* renamed from: t */
            public final C10478w0<C10366n, C10366n.C10368b, AbstractC10373o> m12116t() {
                if (this.f23512r == null) {
                    this.f23512r = new C10478w0<>(this.f23511q, (this.f23499e & 256) != 0, m11661g(), m11659i());
                    this.f23511q = null;
                }
                return this.f23512r;
            }

            /* renamed from: u */
            public final C10478w0<C10298b, C10298b.C10300b, AbstractC10312c> m12115u() {
                if (this.f23506l == null) {
                    this.f23506l = new C10478w0<>(this.f23505k, (this.f23499e & 32) != 0, m11661g(), m11659i());
                    this.f23505k = null;
                }
                return this.f23506l;
            }

            /* renamed from: v */
            public C10386t m12114v() {
                C10506x0<C10386t, C10386t.C10388b, AbstractC10391u> x0Var = this.f23514t;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10386t tVar = this.f23513s;
                C10386t tVar2 = tVar;
                if (tVar == null) {
                    tVar2 = C10386t.m12039k0();
                }
                return tVar2;
            }

            /* renamed from: w */
            public final C10506x0<C10386t, C10386t.C10388b, AbstractC10391u> m12113w() {
                if (this.f23514t == null) {
                    this.f23514t = new C10506x0<>(m12114v(), m11661g(), m11659i());
                    this.f23513s = null;
                }
                return this.f23514t;
            }

            /* renamed from: x */
            public final C10478w0<C10329f0, C10329f0.C10331b, AbstractC10333g0> m12112x() {
                if (this.f23510p == null) {
                    this.f23510p = new C10478w0<>(this.f23509o, (this.f23499e & 128) != 0, m11661g(), m11659i());
                    this.f23509o = null;
                }
                return this.f23510p;
            }

            /* renamed from: y */
            public C10345j0 m12111y() {
                C10506x0<C10345j0, C10345j0.C10347b, AbstractC10353k0> x0Var = this.f23516v;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10345j0 j0Var = this.f23515u;
                C10345j0 j0Var2 = j0Var;
                if (j0Var == null) {
                    j0Var2 = C10345j0.m12382s();
                }
                return j0Var2;
            }

            /* renamed from: z */
            public final C10506x0<C10345j0, C10345j0.C10347b, AbstractC10353k0> m12110z() {
                if (this.f23516v == null) {
                    this.f23516v = new C10506x0<>(m12111y(), m11661g(), m11659i());
                    this.f23515u = null;
                }
                return this.f23516v;
            }
        }

        public C10382r() {
            this.f23498r = (byte) (-1);
            this.f23486f = "";
            this.f23487g = "";
            this.f23488h = C10240d0.f23071d;
            this.f23489i = AbstractC10482x.m11675o();
            this.f23490j = AbstractC10482x.m11675o();
            this.f23491k = Collections.emptyList();
            this.f23492l = Collections.emptyList();
            this.f23493m = Collections.emptyList();
            this.f23494n = Collections.emptyList();
            this.f23497q = "";
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10382r(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                C10386t.C10388b bVar = null;
                                C10345j0.C10347b bVar2 = null;
                                switch (r) {
                                    case 0:
                                        break;
                                    case 10:
                                        AbstractC10253g c = hVar.mo12918c();
                                        this.f23485e |= 1;
                                        this.f23486f = c;
                                        continue;
                                    case 18:
                                        AbstractC10253g c2 = hVar.mo12918c();
                                        this.f23485e |= 2;
                                        this.f23487g = c2;
                                        continue;
                                    case 26:
                                        AbstractC10253g c3 = hVar.mo12918c();
                                        i = i;
                                        if ((i & 4) == 0) {
                                            this.f23488h = new C10240d0();
                                            i |= 4;
                                        }
                                        this.f23488h.mo12889b(c3);
                                        continue;
                                    case 34:
                                        i = i;
                                        if ((i & 32) == 0) {
                                            this.f23491k = new ArrayList();
                                            i |= 32;
                                        }
                                        this.f23491k.add(hVar.mo12921a(C10298b.f23188r, rVar));
                                        continue;
                                    case 42:
                                        i = i;
                                        if ((i & 64) == 0) {
                                            this.f23492l = new ArrayList();
                                            i |= 64;
                                        }
                                        this.f23492l.add(hVar.mo12921a(C10314d.f23252m, rVar));
                                        continue;
                                    case 50:
                                        i = i;
                                        if ((i & 128) == 0) {
                                            this.f23493m = new ArrayList();
                                            i |= 128;
                                        }
                                        this.f23493m.add(hVar.mo12921a(C10329f0.f23298k, rVar));
                                        continue;
                                    case 58:
                                        i = i;
                                        if ((i & 256) == 0) {
                                            this.f23494n = new ArrayList();
                                            i |= 256;
                                        }
                                        this.f23494n.add(hVar.mo12921a(C10366n.f23403r, rVar));
                                        continue;
                                    case 66:
                                        bVar = (this.f23485e & 4) != 0 ? this.f23495o.mo11826f() : bVar;
                                        this.f23495o = (C10386t) hVar.mo12921a(C10386t.f23519D, rVar);
                                        if (bVar != null) {
                                            bVar.m12028a(this.f23495o);
                                            this.f23495o = bVar.mo11825E();
                                        }
                                        this.f23485e |= 4;
                                        continue;
                                    case 74:
                                        bVar2 = (this.f23485e & 8) != 0 ? this.f23496p.mo11826f() : bVar2;
                                        this.f23496p = (C10345j0) hVar.mo12921a(C10345j0.f23343h, rVar);
                                        if (bVar2 != null) {
                                            bVar2.m12379a(this.f23496p);
                                            this.f23496p = bVar2.mo11825E();
                                        }
                                        this.f23485e |= 8;
                                        continue;
                                    case 80:
                                        i = i;
                                        if ((i & 8) == 0) {
                                            this.f23489i = AbstractC10482x.m11674p();
                                            i |= 8;
                                        }
                                        this.f23489i.mo11537e(hVar.mo12908i());
                                        continue;
                                    case 82:
                                        int c4 = hVar.mo12917c(hVar.mo12906k());
                                        i = i;
                                        if ((i & 8) == 0) {
                                            i = i;
                                            if (hVar.mo12925a() > 0) {
                                                this.f23489i = AbstractC10482x.m11674p();
                                                i |= 8;
                                            }
                                        }
                                        while (hVar.mo12925a() > 0) {
                                            this.f23489i.mo11537e(hVar.mo12908i());
                                        }
                                        hVar.mo12919b(c4);
                                        continue;
                                    case 88:
                                        i = i;
                                        if ((i & 16) == 0) {
                                            this.f23490j = AbstractC10482x.m11674p();
                                            i |= 16;
                                        }
                                        this.f23490j.mo11537e(hVar.mo12908i());
                                        continue;
                                    case 90:
                                        int c5 = hVar.mo12917c(hVar.mo12906k());
                                        i = i;
                                        if ((i & 16) == 0) {
                                            i = i;
                                            if (hVar.mo12925a() > 0) {
                                                this.f23490j = AbstractC10482x.m11674p();
                                                i |= 16;
                                            }
                                        }
                                        while (hVar.mo12925a() > 0) {
                                            this.f23490j.mo11537e(hVar.mo12908i());
                                        }
                                        hVar.mo12919b(c5);
                                        continue;
                                    case 98:
                                        AbstractC10253g c6 = hVar.mo12918c();
                                        this.f23485e |= 16;
                                        this.f23497q = c6;
                                        continue;
                                    default:
                                        if (!mo11647a(hVar, d, rVar, r)) {
                                            break;
                                        } else {
                                            continue;
                                        }
                                }
                                z = true;
                            } catch (IOException e) {
                                C10222a0 a0Var = new C10222a0(e);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } catch (C10222a0 e2) {
                            e2.m13078a(this);
                            throw e2;
                        }
                    } finally {
                        if ((i & 4) != 0) {
                            this.f23488h = this.f23488h.mo12887o();
                        }
                        if ((i & 32) != 0) {
                            this.f23491k = Collections.unmodifiableList(this.f23491k);
                        }
                        if ((i & 64) != 0) {
                            this.f23492l = Collections.unmodifiableList(this.f23492l);
                        }
                        if ((i & 128) != 0) {
                            this.f23493m = Collections.unmodifiableList(this.f23493m);
                        }
                        if ((i & 256) != 0) {
                            this.f23494n = Collections.unmodifiableList(this.f23494n);
                        }
                        if ((i & 8) != 0) {
                            this.f23489i.mo11536d();
                        }
                        if ((i & 16) != 0) {
                            this.f23490j.mo11536d();
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10382r(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23498r = (byte) (-1);
        }

        /* renamed from: O */
        public static C10382r m12174O() {
            return f23483s;
        }

        /* renamed from: P */
        public static final C10418l.C10420b m12173P() {
            return C10295k.f23162b;
        }

        /* renamed from: Q */
        public static C10384b m12172Q() {
            return f23483s.mo11826f();
        }

        /* renamed from: a */
        public static C10382r m12163a(byte[] bArr) throws C10222a0 {
            return f23484t.mo11787a(bArr);
        }

        /* renamed from: A */
        public String m12188A() {
            Object obj = this.f23487g;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23487g = s;
            }
            return s;
        }

        /* renamed from: B */
        public int m12187B() {
            return this.f23489i.size();
        }

        /* renamed from: C */
        public List<Integer> m12186C() {
            return this.f23489i;
        }

        /* renamed from: D */
        public int m12185D() {
            return this.f23493m.size();
        }

        /* renamed from: E */
        public List<C10329f0> m12184E() {
            return this.f23493m;
        }

        /* renamed from: F */
        public C10345j0 m12183F() {
            C10345j0 j0Var = this.f23496p;
            C10345j0 j0Var2 = j0Var;
            if (j0Var == null) {
                j0Var2 = C10345j0.m12382s();
            }
            return j0Var2;
        }

        /* renamed from: G */
        public String m12182G() {
            Object obj = this.f23497q;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23497q = s;
            }
            return s;
        }

        /* renamed from: H */
        public int m12181H() {
            return this.f23490j.size();
        }

        /* renamed from: I */
        public List<Integer> m12180I() {
            return this.f23490j;
        }

        /* renamed from: J */
        public boolean m12179J() {
            boolean z = true;
            if ((this.f23485e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: K */
        public boolean m12178K() {
            return (this.f23485e & 4) != 0;
        }

        /* renamed from: L */
        public boolean m12177L() {
            return (this.f23485e & 2) != 0;
        }

        /* renamed from: M */
        public boolean m12176M() {
            return (this.f23485e & 8) != 0;
        }

        /* renamed from: N */
        public boolean m12175N() {
            return (this.f23485e & 16) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10384b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10384b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23485e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23486f);
            }
            if ((this.f23485e & 2) != 0) {
                AbstractC10482x.m11691a(iVar, 2, this.f23487g);
            }
            for (int i = 0; i < this.f23488h.size(); i++) {
                AbstractC10482x.m11691a(iVar, 3, this.f23488h.mo12891a(i));
            }
            for (int i2 = 0; i2 < this.f23491k.size(); i2++) {
                iVar.mo12808b(4, this.f23491k.get(i2));
            }
            for (int i3 = 0; i3 < this.f23492l.size(); i3++) {
                iVar.mo12808b(5, this.f23492l.get(i3));
            }
            for (int i4 = 0; i4 < this.f23493m.size(); i4++) {
                iVar.mo12808b(6, this.f23493m.get(i4));
            }
            for (int i5 = 0; i5 < this.f23494n.size(); i5++) {
                iVar.mo12808b(7, this.f23494n.get(i5));
            }
            if ((this.f23485e & 4) != 0) {
                iVar.mo12808b(8, m12132z());
            }
            if ((this.f23485e & 8) != 0) {
                iVar.mo12808b(9, m12183F());
            }
            for (int i6 = 0; i6 < this.f23489i.size(); i6++) {
                iVar.mo12804c(10, this.f23489i.getInt(i6));
            }
            for (int i7 = 0; i7 < this.f23490j.size(); i7++) {
                iVar.mo12804c(11, this.f23490j.getInt(i7));
            }
            if ((this.f23485e & 16) != 0) {
                AbstractC10482x.m11691a(iVar, 12, this.f23497q);
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10382r mo11818b() {
            return f23483s;
        }

        /* renamed from: b */
        public String m12162b(int i) {
            return this.f23488h.get(i);
        }

        /* renamed from: c */
        public C10314d m12157c(int i) {
            return this.f23492l.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        /* renamed from: d */
        public C10366n m12153d(int i) {
            return this.f23494n.get(i);
        }

        /* renamed from: e */
        public C10298b m12150e(int i) {
            return this.f23491k.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10384b mo11827e() {
            return m12172Q();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10382r)) {
                return super.equals(obj);
            }
            C10382r rVar = (C10382r) obj;
            if (m12179J() != rVar.m12179J()) {
                return false;
            }
            if ((m12179J() && !m12133y().equals(rVar.m12133y())) || m12177L() != rVar.m12177L()) {
                return false;
            }
            if ((m12177L() && !m12188A().equals(rVar.m12188A())) || !m12140r().equals(rVar.m12140r()) || !m12186C().equals(rVar.m12186C()) || !m12180I().equals(rVar.m12180I()) || !m12134x().equals(rVar.m12134x()) || !m12138t().equals(rVar.m12138t()) || !m12184E().equals(rVar.m12184E()) || !m12136v().equals(rVar.m12136v()) || m12178K() != rVar.m12178K()) {
                return false;
            }
            if ((m12178K() && !m12132z().equals(rVar.m12132z())) || m12176M() != rVar.m12176M()) {
                return false;
            }
            if ((!m12176M() || m12183F().equals(rVar.m12183F())) && m12175N() == rVar.m12175N()) {
                return (!m12175N() || m12182G().equals(rVar.m12182G())) && this.f23817c.equals(rVar.f23817c);
            }
            return false;
        }

        /* renamed from: f */
        public int m12148f(int i) {
            return this.f23489i.getInt(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10384b mo11826f() {
            C10384b bVar;
            if (this == f23483s) {
                bVar = new C10384b();
            } else {
                bVar = new C10384b();
                bVar.m12128a(this);
            }
            return bVar;
        }

        /* renamed from: g */
        public C10329f0 m12146g(int i) {
            return this.f23493m.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int a = (this.f23485e & 1) != 0 ? AbstractC10482x.m11694a(1, this.f23486f) + 0 : 0;
            int i2 = a;
            if ((this.f23485e & 2) != 0) {
                i2 = a + AbstractC10482x.m11694a(2, this.f23487g);
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.f23488h.size(); i4++) {
                i3 += AbstractC10482x.m11679c(this.f23488h.mo12891a(i4));
            }
            int size = i2 + i3 + (m12140r().size() * 1);
            for (int i5 = 0; i5 < this.f23491k.size(); i5++) {
                size += AbstractC10274i.m12840f(4, this.f23491k.get(i5));
            }
            for (int i6 = 0; i6 < this.f23492l.size(); i6++) {
                size += AbstractC10274i.m12840f(5, this.f23492l.get(i6));
            }
            for (int i7 = 0; i7 < this.f23493m.size(); i7++) {
                size += AbstractC10274i.m12840f(6, this.f23493m.get(i7));
            }
            for (int i8 = 0; i8 < this.f23494n.size(); i8++) {
                size += AbstractC10274i.m12840f(7, this.f23494n.get(i8));
            }
            int i9 = size;
            if ((this.f23485e & 4) != 0) {
                i9 = size + AbstractC10274i.m12840f(8, m12132z());
            }
            int i10 = i9;
            if ((this.f23485e & 8) != 0) {
                i10 = i9 + AbstractC10274i.m12840f(9, m12183F());
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.f23489i.size(); i12++) {
                i11 += AbstractC10274i.m12831j(this.f23489i.getInt(i12));
            }
            int size2 = m12186C().size();
            int i13 = 0;
            for (int i14 = 0; i14 < this.f23490j.size(); i14++) {
                i13 += AbstractC10274i.m12831j(this.f23490j.getInt(i14));
            }
            int size3 = i10 + i11 + (size2 * 1) + i13 + (m12180I().size() * 1);
            int i15 = size3;
            if ((this.f23485e & 16) != 0) {
                i15 = size3 + AbstractC10482x.m11694a(12, this.f23497q);
            }
            int h = i15 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12173P().hashCode();
            int i2 = hashCode;
            if (m12179J()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12133y().hashCode();
            }
            int i3 = i2;
            if (m12177L()) {
                i3 = (((i2 * 37) + 2) * 53) + m12188A().hashCode();
            }
            int i4 = i3;
            if (m12141q() > 0) {
                i4 = (((i3 * 37) + 3) * 53) + m12140r().hashCode();
            }
            int i5 = i4;
            if (m12187B() > 0) {
                i5 = (((i4 * 37) + 10) * 53) + m12186C().hashCode();
            }
            int i6 = i5;
            if (m12181H() > 0) {
                i6 = (((i5 * 37) + 11) * 53) + m12180I().hashCode();
            }
            int i7 = i6;
            if (m12135w() > 0) {
                i7 = (((i6 * 37) + 4) * 53) + m12134x().hashCode();
            }
            int i8 = i7;
            if (m12139s() > 0) {
                i8 = (((i7 * 37) + 5) * 53) + m12138t().hashCode();
            }
            int i9 = i8;
            if (m12185D() > 0) {
                i9 = (((i8 * 37) + 6) * 53) + m12184E().hashCode();
            }
            int i10 = i9;
            if (m12137u() > 0) {
                i10 = (((i9 * 37) + 7) * 53) + m12136v().hashCode();
            }
            int i11 = i10;
            if (m12178K()) {
                i11 = (((i10 * 37) + 8) * 53) + m12132z().hashCode();
            }
            int i12 = i11;
            if (m12176M()) {
                i12 = (((i11 * 37) + 9) * 53) + m12183F().hashCode();
            }
            int i13 = i12;
            if (m12175N()) {
                i13 = (((i12 * 37) + 12) * 53) + m12182G().hashCode();
            }
            int hashCode2 = (i13 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23498r;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12135w(); i++) {
                if (!m12150e(i).isInitialized()) {
                    this.f23498r = (byte) 0;
                    return false;
                }
            }
            for (int i2 = 0; i2 < m12139s(); i2++) {
                if (!m12157c(i2).isInitialized()) {
                    this.f23498r = (byte) 0;
                    return false;
                }
            }
            for (int i3 = 0; i3 < m12185D(); i3++) {
                if (!m12146g(i3).isInitialized()) {
                    this.f23498r = (byte) 0;
                    return false;
                }
            }
            for (int i4 = 0; i4 < m12137u(); i4++) {
                if (!m12153d(i4).isInitialized()) {
                    this.f23498r = (byte) 0;
                    return false;
                }
            }
            if (!m12178K() || m12132z().isInitialized()) {
                this.f23498r = (byte) 1;
                return true;
            }
            this.f23498r = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10382r> mo11677j() {
            return f23484t;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23163c;
            gVar.m11629a(C10382r.class, C10384b.class);
            return gVar;
        }

        /* renamed from: q */
        public int m12141q() {
            return this.f23488h.size();
        }

        /* renamed from: r */
        public AbstractC10476v0 m12140r() {
            return this.f23488h;
        }

        /* renamed from: s */
        public int m12139s() {
            return this.f23492l.size();
        }

        /* renamed from: t */
        public List<C10314d> m12138t() {
            return this.f23492l;
        }

        /* renamed from: u */
        public int m12137u() {
            return this.f23494n.size();
        }

        /* renamed from: v */
        public List<C10366n> m12136v() {
            return this.f23494n;
        }

        /* renamed from: w */
        public int m12135w() {
            return this.f23491k.size();
        }

        /* renamed from: x */
        public List<C10298b> m12134x() {
            return this.f23491k;
        }

        /* renamed from: y */
        public String m12133y() {
            Object obj = this.f23486f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23486f = s;
            }
            return s;
        }

        /* renamed from: z */
        public C10386t m12132z() {
            C10386t tVar = this.f23495o;
            C10386t tVar2 = tVar;
            if (tVar == null) {
                tVar2 = C10386t.m12039k0();
            }
            return tVar2;
        }
    }

    /* renamed from: h.i.g.k$s */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$s.class */
    public interface AbstractC10385s extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$t */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$t.class */
    public static final class C10386t extends AbstractC10482x.AbstractC10488e<C10386t> implements AbstractC10391u {

        /* renamed from: C */
        public static final C10386t f23518C = new C10386t();
        @Deprecated

        /* renamed from: D */
        public static final AbstractC10462s0<C10386t> f23519D = new C10387a();

        /* renamed from: A */
        public List<C10357l0> f23520A;

        /* renamed from: B */
        public byte f23521B;

        /* renamed from: f */
        public int f23522f;

        /* renamed from: g */
        public volatile Object f23523g;

        /* renamed from: h */
        public volatile Object f23524h;

        /* renamed from: i */
        public boolean f23525i;

        /* renamed from: j */
        public boolean f23526j;

        /* renamed from: k */
        public boolean f23527k;

        /* renamed from: l */
        public int f23528l;

        /* renamed from: m */
        public volatile Object f23529m;

        /* renamed from: n */
        public boolean f23530n;

        /* renamed from: o */
        public boolean f23531o;

        /* renamed from: p */
        public boolean f23532p;

        /* renamed from: q */
        public boolean f23533q;

        /* renamed from: r */
        public boolean f23534r;

        /* renamed from: s */
        public boolean f23535s;

        /* renamed from: t */
        public volatile Object f23536t;

        /* renamed from: u */
        public volatile Object f23537u;

        /* renamed from: v */
        public volatile Object f23538v;

        /* renamed from: w */
        public volatile Object f23539w;

        /* renamed from: x */
        public volatile Object f23540x;

        /* renamed from: y */
        public volatile Object f23541y;

        /* renamed from: z */
        public volatile Object f23542z;

        /* renamed from: h.i.g.k$t$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$t$a.class */
        public static final class C10387a extends AbstractC10235c<C10386t> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10386t mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10386t(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$t$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$t$b.class */
        public static final class C10388b extends AbstractC10482x.AbstractC10487d<C10386t, C10388b> implements AbstractC10391u {

            /* renamed from: A */
            public List<C10357l0> f23543A;

            /* renamed from: B */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23544B;

            /* renamed from: f */
            public int f23545f;

            /* renamed from: g */
            public Object f23546g;

            /* renamed from: h */
            public Object f23547h;

            /* renamed from: i */
            public boolean f23548i;

            /* renamed from: j */
            public boolean f23549j;

            /* renamed from: k */
            public boolean f23550k;

            /* renamed from: l */
            public int f23551l;

            /* renamed from: m */
            public Object f23552m;

            /* renamed from: n */
            public boolean f23553n;

            /* renamed from: o */
            public boolean f23554o;

            /* renamed from: p */
            public boolean f23555p;

            /* renamed from: q */
            public boolean f23556q;

            /* renamed from: r */
            public boolean f23557r;

            /* renamed from: s */
            public boolean f23558s;

            /* renamed from: t */
            public Object f23559t;

            /* renamed from: u */
            public Object f23560u;

            /* renamed from: v */
            public Object f23561v;

            /* renamed from: w */
            public Object f23562w;

            /* renamed from: x */
            public Object f23563x;

            /* renamed from: y */
            public Object f23564y;

            /* renamed from: z */
            public Object f23565z;

            public C10388b() {
                this.f23546g = "";
                this.f23547h = "";
                this.f23551l = 1;
                this.f23552m = "";
                this.f23559t = "";
                this.f23560u = "";
                this.f23561v = "";
                this.f23562w = "";
                this.f23563x = "";
                this.f23564y = "";
                this.f23565z = "";
                this.f23543A = Collections.emptyList();
                m12016p();
            }

            public C10388b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23546g = "";
                this.f23547h = "";
                this.f23551l = 1;
                this.f23552m = "";
                this.f23559t = "";
                this.f23560u = "";
                this.f23561v = "";
                this.f23562w = "";
                this.f23563x = "";
                this.f23564y = "";
                this.f23565z = "";
                this.f23543A = Collections.emptyList();
                m12016p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10386t mo11825E() {
                C10386t tVar = new C10386t(this);
                int i = this.f23545f;
                int i2 = (i & 1) != 0 ? 1 : 0;
                tVar.f23523g = this.f23546g;
                int i3 = i2;
                if ((i & 2) != 0) {
                    i3 = i2 | 2;
                }
                tVar.f23524h = this.f23547h;
                int i4 = i3;
                if ((i & 4) != 0) {
                    tVar.f23525i = this.f23548i;
                    i4 = i3 | 4;
                }
                int i5 = i4;
                if ((i & 8) != 0) {
                    tVar.f23526j = this.f23549j;
                    i5 = i4 | 8;
                }
                int i6 = i5;
                if ((i & 16) != 0) {
                    tVar.f23527k = this.f23550k;
                    i6 = i5 | 16;
                }
                int i7 = i6;
                if ((i & 32) != 0) {
                    i7 = i6 | 32;
                }
                tVar.f23528l = this.f23551l;
                int i8 = i7;
                if ((i & 64) != 0) {
                    i8 = i7 | 64;
                }
                tVar.f23529m = this.f23552m;
                int i9 = i8;
                if ((i & 128) != 0) {
                    tVar.f23530n = this.f23553n;
                    i9 = i8 | 128;
                }
                int i10 = i9;
                if ((i & 256) != 0) {
                    tVar.f23531o = this.f23554o;
                    i10 = i9 | 256;
                }
                int i11 = i10;
                if ((i & 512) != 0) {
                    tVar.f23532p = this.f23555p;
                    i11 = i10 | 512;
                }
                int i12 = i11;
                if ((i & 1024) != 0) {
                    tVar.f23533q = this.f23556q;
                    i12 = i11 | 1024;
                }
                int i13 = i12;
                if ((i & 2048) != 0) {
                    tVar.f23534r = this.f23557r;
                    i13 = i12 | 2048;
                }
                int i14 = i13;
                if ((i & 4096) != 0) {
                    tVar.f23535s = this.f23558s;
                    i14 = i13 | 4096;
                }
                int i15 = i14;
                if ((i & 8192) != 0) {
                    i15 = i14 | 8192;
                }
                tVar.f23536t = this.f23559t;
                int i16 = i15;
                if ((i & 16384) != 0) {
                    i16 = i15 | 16384;
                }
                tVar.f23537u = this.f23560u;
                int i17 = i16;
                if ((32768 & i) != 0) {
                    i17 = i16 | 32768;
                }
                tVar.f23538v = this.f23561v;
                int i18 = i17;
                if ((65536 & i) != 0) {
                    i18 = i17 | 65536;
                }
                tVar.f23539w = this.f23562w;
                int i19 = i18;
                if ((131072 & i) != 0) {
                    i19 = i18 | 131072;
                }
                tVar.f23540x = this.f23563x;
                int i20 = i19;
                if ((262144 & i) != 0) {
                    i20 = i19 | 262144;
                }
                tVar.f23541y = this.f23564y;
                int i21 = i20;
                if ((i & 524288) != 0) {
                    i21 = i20 | 524288;
                }
                tVar.f23542z = this.f23565z;
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23544B;
                if (w0Var == null) {
                    if ((this.f23545f & 1048576) != 0) {
                        this.f23543A = Collections.unmodifiableList(this.f23543A);
                        this.f23545f &= -1048577;
                    }
                    tVar.f23520A = this.f23543A;
                } else {
                    tVar.f23520A = w0Var.m11704b();
                }
                tVar.f23522f = i21;
                m11658j();
                return tVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10388b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10386t.C10388b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$t> r0 = p081h.p203i.p401g.C10295k.C10386t.f23519D     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$t r0 = (p081h.p203i.p401g.C10295k.C10386t) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$t$b r0 = r0.m12028a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$t r0 = (p081h.p203i.p401g.C10295k.C10386t) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$t$b r0 = r0.m12028a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10386t.C10388b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$t$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10388b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10386t) {
                    m12028a((C10386t) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10388b m12029a(EnumC10389c cVar) {
                if (cVar != null) {
                    this.f23545f |= 32;
                    this.f23551l = cVar.getNumber();
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            /* renamed from: a */
            public C10388b m12028a(C10386t tVar) {
                if (tVar == C10386t.m12039k0()) {
                    return this;
                }
                if (tVar.m12084Z()) {
                    this.f23545f |= 1;
                    this.f23546g = tVar.f23523g;
                    m11657k();
                }
                if (tVar.m12085Y()) {
                    this.f23545f |= 2;
                    this.f23547h = tVar.f23524h;
                    m11657k();
                }
                if (tVar.m12086X()) {
                    m12022f(tVar.m12108B());
                }
                if (tVar.m12088V()) {
                    m12024d(tVar.m12030z());
                }
                if (tVar.m12078a0()) {
                    m12021g(tVar.m12105E());
                }
                if (tVar.m12068c0()) {
                    m12029a(tVar.m12103G());
                }
                if (tVar.m12089U()) {
                    this.f23545f |= 64;
                    this.f23552m = tVar.f23529m;
                    m11657k();
                }
                if (tVar.m12092R()) {
                    m12026b(tVar.m12034v());
                }
                if (tVar.m12087W()) {
                    m12023e(tVar.m12109A());
                }
                if (tVar.m12048h0()) {
                    m12019i(tVar.m12098L());
                }
                if (tVar.m12060e0()) {
                    m12020h(tVar.m12101I());
                }
                if (tVar.m12090T()) {
                    m12025c(tVar.m12032x());
                }
                if (tVar.m12093Q()) {
                    m12027a(tVar.m12035u());
                }
                if (tVar.m12072b0()) {
                    this.f23545f |= 8192;
                    this.f23559t = tVar.f23536t;
                    m11657k();
                }
                if (tVar.m12091S()) {
                    this.f23545f |= 16384;
                    this.f23560u = tVar.f23537u;
                    m11657k();
                }
                if (tVar.m12041j0()) {
                    this.f23545f |= 32768;
                    this.f23561v = tVar.f23538v;
                    m11657k();
                }
                if (tVar.m12064d0()) {
                    this.f23545f |= 65536;
                    this.f23562w = tVar.f23539w;
                    m11657k();
                }
                if (tVar.m12052g0()) {
                    this.f23545f |= 131072;
                    this.f23563x = tVar.f23540x;
                    m11657k();
                }
                if (tVar.m12056f0()) {
                    this.f23545f |= 262144;
                    this.f23564y = tVar.f23541y;
                    m11657k();
                }
                if (tVar.m12044i0()) {
                    this.f23545f |= 524288;
                    this.f23565z = tVar.f23542z;
                    m11657k();
                }
                if (this.f23544B == null) {
                    if (!tVar.f23520A.isEmpty()) {
                        if (this.f23543A.isEmpty()) {
                            this.f23543A = tVar.f23520A;
                            this.f23545f &= -1048577;
                        } else {
                            m12018n();
                            this.f23543A.addAll(tVar.f23520A);
                        }
                        m11657k();
                    }
                } else if (!tVar.f23520A.isEmpty()) {
                    if (this.f23544B.m11700f()) {
                        this.f23544B.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23544B = null;
                        this.f23543A = tVar.f23520A;
                        this.f23545f = (-1048577) & this.f23545f;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m12017o();
                        }
                        this.f23544B = w0Var;
                    } else {
                        this.f23544B.m11705a(tVar.f23520A);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) tVar);
                mo11668b(tVar.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10388b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10388b) super.mo11655a(gVar, obj);
            }

            /* renamed from: a */
            public C10388b m12027a(boolean z) {
                this.f23545f |= 4096;
                this.f23558s = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10388b mo11668b(C10247f1 f1Var) {
                return (C10388b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10388b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10388b) super.mo11652b(gVar, obj);
            }

            /* renamed from: b */
            public C10388b m12026b(boolean z) {
                this.f23545f |= 128;
                this.f23553n = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10386t mo11818b() {
                return C10386t.m12039k0();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10386t build() {
                C10386t E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            /* renamed from: c */
            public C10388b m12025c(boolean z) {
                this.f23545f |= 2048;
                this.f23557r = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23186z;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10388b clone() {
                return (C10388b) super.clone();
            }

            @Deprecated
            /* renamed from: d */
            public C10388b m12024d(boolean z) {
                this.f23545f |= 8;
                this.f23549j = z;
                m11657k();
                return this;
            }

            /* renamed from: e */
            public C10388b m12023e(boolean z) {
                this.f23545f |= 256;
                this.f23554o = z;
                m11657k();
                return this;
            }

            /* renamed from: f */
            public C10388b m12022f(boolean z) {
                this.f23545f |= 4;
                this.f23548i = z;
                m11657k();
                return this;
            }

            /* renamed from: g */
            public C10388b m12021g(boolean z) {
                this.f23545f |= 16;
                this.f23550k = z;
                m11657k();
                return this;
            }

            /* renamed from: h */
            public C10388b m12020h(boolean z) {
                this.f23545f |= 1024;
                this.f23556q = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23135A;
                gVar.m11629a(C10386t.class, C10388b.class);
                return gVar;
            }

            /* renamed from: i */
            public C10388b m12019i(boolean z) {
                this.f23545f |= 512;
                this.f23555p = z;
                m11657k();
                return this;
            }

            /* renamed from: n */
            public final void m12018n() {
                if ((this.f23545f & 1048576) == 0) {
                    this.f23543A = new ArrayList(this.f23543A);
                    this.f23545f |= 1048576;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m12017o() {
                if (this.f23544B == null) {
                    this.f23544B = new C10478w0<>(this.f23543A, (this.f23545f & 1048576) != 0, m11661g(), m11659i());
                    this.f23543A = null;
                }
                return this.f23544B;
            }

            /* renamed from: p */
            public final void m12016p() {
                if (AbstractC10482x.f23816d) {
                    m12017o();
                }
            }
        }

        /* renamed from: h.i.g.k$t$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$t$c.class */
        public enum EnumC10389c implements AbstractC10469u0 {
            SPEED(1),
            CODE_SIZE(2),
            LITE_RUNTIME(3);
            

            /* renamed from: a */
            public final int f23570a;

            /* renamed from: h.i.g.k$t$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$t$c$a.class */
            public static final class C10390a implements C10516z.AbstractC10518b<EnumC10389c> {
            }

            static {
                new C10390a();
                values();
            }

            EnumC10389c(int i) {
                this.f23570a = i;
            }

            /* renamed from: a */
            public static EnumC10389c m12015a(int i) {
                if (i == 1) {
                    return SPEED;
                }
                if (i == 2) {
                    return CODE_SIZE;
                }
                if (i != 3) {
                    return null;
                }
                return LITE_RUNTIME;
            }

            @Deprecated
            /* renamed from: b */
            public static EnumC10389c m12014b(int i) {
                return m12015a(i);
            }

            @Override // p081h.p203i.p401g.C10516z.AbstractC10517a
            public final int getNumber() {
                return this.f23570a;
            }
        }

        public C10386t() {
            this.f23521B = (byte) (-1);
            this.f23523g = "";
            this.f23524h = "";
            this.f23528l = 1;
            this.f23529m = "";
            this.f23536t = "";
            this.f23537u = "";
            this.f23538v = "";
            this.f23539w = "";
            this.f23540x = "";
            this.f23541y = "";
            this.f23542z = "";
            this.f23520A = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10386t(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                switch (r) {
                                    case 0:
                                        break;
                                    case 10:
                                        AbstractC10253g c = hVar.mo12918c();
                                        this.f23522f = 1 | this.f23522f;
                                        this.f23523g = c;
                                        continue;
                                    case 66:
                                        AbstractC10253g c2 = hVar.mo12918c();
                                        this.f23522f |= 2;
                                        this.f23524h = c2;
                                        continue;
                                    case 72:
                                        int e = hVar.mo12914e();
                                        if (EnumC10389c.m12014b(e) == null) {
                                            d.m13016a(9, e);
                                            continue;
                                        } else {
                                            this.f23522f |= 32;
                                            this.f23528l = e;
                                        }
                                    case 80:
                                        this.f23522f |= 4;
                                        this.f23525i = hVar.mo12920b();
                                        continue;
                                    case 90:
                                        AbstractC10253g c3 = hVar.mo12918c();
                                        this.f23522f |= 64;
                                        this.f23529m = c3;
                                        continue;
                                    case 128:
                                        this.f23522f |= 128;
                                        this.f23530n = hVar.mo12920b();
                                        continue;
                                    case 136:
                                        this.f23522f |= 256;
                                        this.f23531o = hVar.mo12920b();
                                        continue;
                                    case 144:
                                        this.f23522f |= 512;
                                        this.f23532p = hVar.mo12920b();
                                        continue;
                                    case 160:
                                        this.f23522f |= 8;
                                        this.f23526j = hVar.mo12920b();
                                        continue;
                                    case H262Reader.START_GROUP /* 184 */:
                                        this.f23522f |= 2048;
                                        this.f23534r = hVar.mo12920b();
                                        continue;
                                    case 216:
                                        this.f23522f |= 16;
                                        this.f23527k = hVar.mo12920b();
                                        continue;
                                    case 248:
                                        this.f23522f |= 4096;
                                        this.f23535s = hVar.mo12920b();
                                        continue;
                                    case 290:
                                        AbstractC10253g c4 = hVar.mo12918c();
                                        this.f23522f |= 8192;
                                        this.f23536t = c4;
                                        continue;
                                    case 298:
                                        AbstractC10253g c5 = hVar.mo12918c();
                                        this.f23522f |= 16384;
                                        this.f23537u = c5;
                                        continue;
                                    case 314:
                                        AbstractC10253g c6 = hVar.mo12918c();
                                        this.f23522f |= 32768;
                                        this.f23538v = c6;
                                        continue;
                                    case 322:
                                        AbstractC10253g c7 = hVar.mo12918c();
                                        this.f23522f |= 65536;
                                        this.f23539w = c7;
                                        continue;
                                    case 330:
                                        AbstractC10253g c8 = hVar.mo12918c();
                                        this.f23522f |= 131072;
                                        this.f23540x = c8;
                                        continue;
                                    case 336:
                                        this.f23522f |= 1024;
                                        this.f23533q = hVar.mo12920b();
                                        continue;
                                    case 354:
                                        AbstractC10253g c9 = hVar.mo12918c();
                                        this.f23522f |= 262144;
                                        this.f23541y = c9;
                                        continue;
                                    case 362:
                                        AbstractC10253g c10 = hVar.mo12918c();
                                        this.f23522f |= 524288;
                                        this.f23542z = c10;
                                        continue;
                                    case 7994:
                                        i = i;
                                        if ((i & 1048576) == 0) {
                                            this.f23520A = new ArrayList();
                                            i |= 1048576;
                                        }
                                        this.f23520A.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                        continue;
                                    default:
                                        if (!mo11647a(hVar, d, rVar, r)) {
                                            break;
                                        } else {
                                            continue;
                                        }
                                }
                                z = true;
                            } catch (IOException e2) {
                                C10222a0 a0Var = new C10222a0(e2);
                                a0Var.m13078a(this);
                                throw a0Var;
                            }
                        } catch (C10222a0 e3) {
                            e3.m13078a(this);
                            throw e3;
                        }
                    } finally {
                        if ((i & 1048576) != 0) {
                            this.f23520A = Collections.unmodifiableList(this.f23520A);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10386t(AbstractC10482x.AbstractC10487d<C10386t, ?> dVar) {
            super(dVar);
            this.f23521B = (byte) (-1);
        }

        /* renamed from: k0 */
        public static C10386t m12039k0() {
            return f23518C;
        }

        /* renamed from: l */
        public static C10388b m12038l(C10386t tVar) {
            C10388b f = f23518C.mo11826f();
            f.m12028a(tVar);
            return f;
        }

        /* renamed from: l0 */
        public static final C10418l.C10420b m12037l0() {
            return C10295k.f23186z;
        }

        /* renamed from: m0 */
        public static C10388b m12036m0() {
            return f23518C.mo11826f();
        }

        /* renamed from: A */
        public boolean m12109A() {
            return this.f23531o;
        }

        /* renamed from: B */
        public boolean m12108B() {
            return this.f23525i;
        }

        /* renamed from: C */
        public String m12107C() {
            Object obj = this.f23524h;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23524h = s;
            }
            return s;
        }

        /* renamed from: D */
        public String m12106D() {
            Object obj = this.f23523g;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23523g = s;
            }
            return s;
        }

        /* renamed from: E */
        public boolean m12105E() {
            return this.f23527k;
        }

        /* renamed from: F */
        public String m12104F() {
            Object obj = this.f23536t;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23536t = s;
            }
            return s;
        }

        /* renamed from: G */
        public EnumC10389c m12103G() {
            EnumC10389c b = EnumC10389c.m12014b(this.f23528l);
            EnumC10389c cVar = b;
            if (b == null) {
                cVar = EnumC10389c.SPEED;
            }
            return cVar;
        }

        /* renamed from: H */
        public String m12102H() {
            Object obj = this.f23539w;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23539w = s;
            }
            return s;
        }

        /* renamed from: I */
        public boolean m12101I() {
            return this.f23533q;
        }

        /* renamed from: J */
        public String m12100J() {
            Object obj = this.f23541y;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23541y = s;
            }
            return s;
        }

        /* renamed from: K */
        public String m12099K() {
            Object obj = this.f23540x;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23540x = s;
            }
            return s;
        }

        /* renamed from: L */
        public boolean m12098L() {
            return this.f23532p;
        }

        /* renamed from: M */
        public String m12097M() {
            Object obj = this.f23542z;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23542z = s;
            }
            return s;
        }

        /* renamed from: N */
        public String m12096N() {
            Object obj = this.f23538v;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23538v = s;
            }
            return s;
        }

        /* renamed from: O */
        public int m12095O() {
            return this.f23520A.size();
        }

        /* renamed from: P */
        public List<C10357l0> m12094P() {
            return this.f23520A;
        }

        /* renamed from: Q */
        public boolean m12093Q() {
            return (this.f23522f & 4096) != 0;
        }

        /* renamed from: R */
        public boolean m12092R() {
            return (this.f23522f & 128) != 0;
        }

        /* renamed from: S */
        public boolean m12091S() {
            return (this.f23522f & 16384) != 0;
        }

        /* renamed from: T */
        public boolean m12090T() {
            return (this.f23522f & 2048) != 0;
        }

        /* renamed from: U */
        public boolean m12089U() {
            return (this.f23522f & 64) != 0;
        }

        @Deprecated
        /* renamed from: V */
        public boolean m12088V() {
            return (this.f23522f & 8) != 0;
        }

        /* renamed from: W */
        public boolean m12087W() {
            return (this.f23522f & 256) != 0;
        }

        /* renamed from: X */
        public boolean m12086X() {
            return (this.f23522f & 4) != 0;
        }

        /* renamed from: Y */
        public boolean m12085Y() {
            return (this.f23522f & 2) != 0;
        }

        /* renamed from: Z */
        public boolean m12084Z() {
            boolean z = true;
            if ((this.f23522f & 1) == 0) {
                z = false;
            }
            return z;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10388b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10388b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            if ((this.f23522f & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23523g);
            }
            if ((this.f23522f & 2) != 0) {
                AbstractC10482x.m11691a(iVar, 8, this.f23524h);
            }
            if ((this.f23522f & 32) != 0) {
                iVar.m12879a(9, this.f23528l);
            }
            if ((this.f23522f & 4) != 0) {
                iVar.mo12817a(10, this.f23525i);
            }
            if ((this.f23522f & 64) != 0) {
                AbstractC10482x.m11691a(iVar, 11, this.f23529m);
            }
            if ((this.f23522f & 128) != 0) {
                iVar.mo12817a(16, this.f23530n);
            }
            if ((this.f23522f & 256) != 0) {
                iVar.mo12817a(17, this.f23531o);
            }
            if ((this.f23522f & 512) != 0) {
                iVar.mo12817a(18, this.f23532p);
            }
            if ((this.f23522f & 8) != 0) {
                iVar.mo12817a(20, this.f23526j);
            }
            if ((this.f23522f & 2048) != 0) {
                iVar.mo12817a(23, this.f23534r);
            }
            if ((this.f23522f & 16) != 0) {
                iVar.mo12817a(27, this.f23527k);
            }
            if ((this.f23522f & 4096) != 0) {
                iVar.mo12817a(31, this.f23535s);
            }
            if ((this.f23522f & 8192) != 0) {
                AbstractC10482x.m11691a(iVar, 36, this.f23536t);
            }
            if ((this.f23522f & 16384) != 0) {
                AbstractC10482x.m11691a(iVar, 37, this.f23537u);
            }
            if ((this.f23522f & 32768) != 0) {
                AbstractC10482x.m11691a(iVar, 39, this.f23538v);
            }
            if ((this.f23522f & 65536) != 0) {
                AbstractC10482x.m11691a(iVar, 40, this.f23539w);
            }
            if ((this.f23522f & 131072) != 0) {
                AbstractC10482x.m11691a(iVar, 41, this.f23540x);
            }
            if ((this.f23522f & 1024) != 0) {
                iVar.mo12817a(42, this.f23533q);
            }
            if ((this.f23522f & 262144) != 0) {
                AbstractC10482x.m11691a(iVar, 44, this.f23541y);
            }
            if ((this.f23522f & 524288) != 0) {
                AbstractC10482x.m11691a(iVar, 45, this.f23542z);
            }
            for (int i = 0; i < this.f23520A.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23520A.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        /* renamed from: a0 */
        public boolean m12078a0() {
            return (this.f23522f & 16) != 0;
        }

        /* renamed from: b */
        public C10357l0 m12077b(int i) {
            return this.f23520A.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10386t mo11818b() {
            return f23518C;
        }

        /* renamed from: b0 */
        public boolean m12072b0() {
            return (this.f23522f & 8192) != 0;
        }

        /* renamed from: c0 */
        public boolean m12068c0() {
            return (this.f23522f & 32) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        /* renamed from: d0 */
        public boolean m12064d0() {
            return (this.f23522f & 65536) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10388b mo11827e() {
            return m12036m0();
        }

        /* renamed from: e0 */
        public boolean m12060e0() {
            return (this.f23522f & 1024) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10386t)) {
                return super.equals(obj);
            }
            C10386t tVar = (C10386t) obj;
            if (m12084Z() != tVar.m12084Z()) {
                return false;
            }
            if ((m12084Z() && !m12106D().equals(tVar.m12106D())) || m12085Y() != tVar.m12085Y()) {
                return false;
            }
            if ((m12085Y() && !m12107C().equals(tVar.m12107C())) || m12086X() != tVar.m12086X()) {
                return false;
            }
            if ((m12086X() && m12108B() != tVar.m12108B()) || m12088V() != tVar.m12088V()) {
                return false;
            }
            if ((m12088V() && m12030z() != tVar.m12030z()) || m12078a0() != tVar.m12078a0()) {
                return false;
            }
            if ((m12078a0() && m12105E() != tVar.m12105E()) || m12068c0() != tVar.m12068c0()) {
                return false;
            }
            if ((m12068c0() && this.f23528l != tVar.f23528l) || m12089U() != tVar.m12089U()) {
                return false;
            }
            if ((m12089U() && !m12031y().equals(tVar.m12031y())) || m12092R() != tVar.m12092R()) {
                return false;
            }
            if ((m12092R() && m12034v() != tVar.m12034v()) || m12087W() != tVar.m12087W()) {
                return false;
            }
            if ((m12087W() && m12109A() != tVar.m12109A()) || m12048h0() != tVar.m12048h0()) {
                return false;
            }
            if ((m12048h0() && m12098L() != tVar.m12098L()) || m12060e0() != tVar.m12060e0()) {
                return false;
            }
            if ((m12060e0() && m12101I() != tVar.m12101I()) || m12090T() != tVar.m12090T()) {
                return false;
            }
            if ((m12090T() && m12032x() != tVar.m12032x()) || m12093Q() != tVar.m12093Q()) {
                return false;
            }
            if ((m12093Q() && m12035u() != tVar.m12035u()) || m12072b0() != tVar.m12072b0()) {
                return false;
            }
            if ((m12072b0() && !m12104F().equals(tVar.m12104F())) || m12091S() != tVar.m12091S()) {
                return false;
            }
            if ((m12091S() && !m12033w().equals(tVar.m12033w())) || m12041j0() != tVar.m12041j0()) {
                return false;
            }
            if ((m12041j0() && !m12096N().equals(tVar.m12096N())) || m12064d0() != tVar.m12064d0()) {
                return false;
            }
            if ((m12064d0() && !m12102H().equals(tVar.m12102H())) || m12052g0() != tVar.m12052g0()) {
                return false;
            }
            if ((m12052g0() && !m12099K().equals(tVar.m12099K())) || m12056f0() != tVar.m12056f0()) {
                return false;
            }
            if ((!m12056f0() || m12100J().equals(tVar.m12100J())) && m12044i0() == tVar.m12044i0()) {
                return (!m12044i0() || m12097M().equals(tVar.m12097M())) && m12094P().equals(tVar.m12094P()) && this.f23817c.equals(tVar.f23817c) && m11638s().equals(tVar.m11638s());
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10388b mo11826f() {
            C10388b bVar;
            if (this == f23518C) {
                bVar = new C10388b();
            } else {
                bVar = new C10388b();
                bVar.m12028a(this);
            }
            return bVar;
        }

        /* renamed from: f0 */
        public boolean m12056f0() {
            return (this.f23522f & 262144) != 0;
        }

        /* renamed from: g0 */
        public boolean m12052g0() {
            return (this.f23522f & 131072) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int a = (this.f23522f & 1) != 0 ? AbstractC10482x.m11694a(1, this.f23523g) + 0 : 0;
            int i2 = a;
            if ((this.f23522f & 2) != 0) {
                i2 = a + AbstractC10482x.m11694a(8, this.f23524h);
            }
            int i3 = i2;
            if ((this.f23522f & 32) != 0) {
                i3 = i2 + AbstractC10274i.m12846e(9, this.f23528l);
            }
            int i4 = i3;
            if ((this.f23522f & 4) != 0) {
                i4 = i3 + AbstractC10274i.m12865b(10, this.f23525i);
            }
            int i5 = i4;
            if ((this.f23522f & 64) != 0) {
                i5 = i4 + AbstractC10482x.m11694a(11, this.f23529m);
            }
            int i6 = i5;
            if ((this.f23522f & 128) != 0) {
                i6 = i5 + AbstractC10274i.m12865b(16, this.f23530n);
            }
            int i7 = i6;
            if ((this.f23522f & 256) != 0) {
                i7 = i6 + AbstractC10274i.m12865b(17, this.f23531o);
            }
            int i8 = i7;
            if ((this.f23522f & 512) != 0) {
                i8 = i7 + AbstractC10274i.m12865b(18, this.f23532p);
            }
            int i9 = i8;
            if ((this.f23522f & 8) != 0) {
                i9 = i8 + AbstractC10274i.m12865b(20, this.f23526j);
            }
            int i10 = i9;
            if ((this.f23522f & 2048) != 0) {
                i10 = i9 + AbstractC10274i.m12865b(23, this.f23534r);
            }
            int i11 = i10;
            if ((this.f23522f & 16) != 0) {
                i11 = i10 + AbstractC10274i.m12865b(27, this.f23527k);
            }
            int i12 = i11;
            if ((this.f23522f & 4096) != 0) {
                i12 = i11 + AbstractC10274i.m12865b(31, this.f23535s);
            }
            int i13 = i12;
            if ((this.f23522f & 8192) != 0) {
                i13 = i12 + AbstractC10482x.m11694a(36, this.f23536t);
            }
            int i14 = i13;
            if ((this.f23522f & 16384) != 0) {
                i14 = i13 + AbstractC10482x.m11694a(37, this.f23537u);
            }
            int i15 = i14;
            if ((this.f23522f & 32768) != 0) {
                i15 = i14 + AbstractC10482x.m11694a(39, this.f23538v);
            }
            int i16 = i15;
            if ((this.f23522f & 65536) != 0) {
                i16 = i15 + AbstractC10482x.m11694a(40, this.f23539w);
            }
            int i17 = i16;
            if ((this.f23522f & 131072) != 0) {
                i17 = i16 + AbstractC10482x.m11694a(41, this.f23540x);
            }
            int i18 = i17;
            if ((this.f23522f & 1024) != 0) {
                i18 = i17 + AbstractC10274i.m12865b(42, this.f23533q);
            }
            int i19 = i18;
            if ((this.f23522f & 262144) != 0) {
                i19 = i18 + AbstractC10482x.m11694a(44, this.f23541y);
            }
            int i20 = i19;
            int i21 = 0;
            if ((this.f23522f & 524288) != 0) {
                i20 = i19 + AbstractC10482x.m11694a(45, this.f23542z);
                i21 = 0;
            }
            while (i21 < this.f23520A.size()) {
                i20 += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23520A.get(i21));
                i21++;
            }
            int r = i20 + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        /* renamed from: h0 */
        public boolean m12048h0() {
            return (this.f23522f & 512) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12037l0().hashCode();
            int i2 = hashCode;
            if (m12084Z()) {
                i2 = (((hashCode * 37) + 1) * 53) + m12106D().hashCode();
            }
            int i3 = i2;
            if (m12085Y()) {
                i3 = (((i2 * 37) + 8) * 53) + m12107C().hashCode();
            }
            int i4 = i3;
            if (m12086X()) {
                i4 = (((i3 * 37) + 10) * 53) + C10516z.m11543a(m12108B());
            }
            int i5 = i4;
            if (m12088V()) {
                i5 = (((i4 * 37) + 20) * 53) + C10516z.m11543a(m12030z());
            }
            int i6 = i5;
            if (m12078a0()) {
                i6 = (((i5 * 37) + 27) * 53) + C10516z.m11543a(m12105E());
            }
            int i7 = i6;
            if (m12068c0()) {
                i7 = (((i6 * 37) + 9) * 53) + this.f23528l;
            }
            int i8 = i7;
            if (m12089U()) {
                i8 = (((i7 * 37) + 11) * 53) + m12031y().hashCode();
            }
            int i9 = i8;
            if (m12092R()) {
                i9 = (((i8 * 37) + 16) * 53) + C10516z.m11543a(m12034v());
            }
            int i10 = i9;
            if (m12087W()) {
                i10 = (((i9 * 37) + 17) * 53) + C10516z.m11543a(m12109A());
            }
            int i11 = i10;
            if (m12048h0()) {
                i11 = (((i10 * 37) + 18) * 53) + C10516z.m11543a(m12098L());
            }
            int i12 = i11;
            if (m12060e0()) {
                i12 = (((i11 * 37) + 42) * 53) + C10516z.m11543a(m12101I());
            }
            int i13 = i12;
            if (m12090T()) {
                i13 = (((i12 * 37) + 23) * 53) + C10516z.m11543a(m12032x());
            }
            int i14 = i13;
            if (m12093Q()) {
                i14 = (((i13 * 37) + 31) * 53) + C10516z.m11543a(m12035u());
            }
            int i15 = i14;
            if (m12072b0()) {
                i15 = (((i14 * 37) + 36) * 53) + m12104F().hashCode();
            }
            int i16 = i15;
            if (m12091S()) {
                i16 = (((i15 * 37) + 37) * 53) + m12033w().hashCode();
            }
            int i17 = i16;
            if (m12041j0()) {
                i17 = (((i16 * 37) + 39) * 53) + m12096N().hashCode();
            }
            int i18 = i17;
            if (m12064d0()) {
                i18 = (((i17 * 37) + 40) * 53) + m12102H().hashCode();
            }
            int i19 = i18;
            if (m12052g0()) {
                i19 = (((i18 * 37) + 41) * 53) + m12099K().hashCode();
            }
            int i20 = i19;
            if (m12056f0()) {
                i20 = (((i19 * 37) + 44) * 53) + m12100J().hashCode();
            }
            int i21 = i20;
            if (m12044i0()) {
                i21 = (((i20 * 37) + 45) * 53) + m12097M().hashCode();
            }
            int i22 = i21;
            if (m12095O() > 0) {
                i22 = (((i21 * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m12094P().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i22, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        /* renamed from: i0 */
        public boolean m12044i0() {
            return (this.f23522f & 524288) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23521B;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m12095O(); i++) {
                if (!m12077b(i).isInitialized()) {
                    this.f23521B = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23521B = (byte) 0;
                return false;
            }
            this.f23521B = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10386t> mo11677j() {
            return f23519D;
        }

        /* renamed from: j0 */
        public boolean m12041j0() {
            return (this.f23522f & 32768) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23135A;
            gVar.m11629a(C10386t.class, C10388b.class);
            return gVar;
        }

        /* renamed from: u */
        public boolean m12035u() {
            return this.f23535s;
        }

        /* renamed from: v */
        public boolean m12034v() {
            return this.f23530n;
        }

        /* renamed from: w */
        public String m12033w() {
            Object obj = this.f23537u;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23537u = s;
            }
            return s;
        }

        /* renamed from: x */
        public boolean m12032x() {
            return this.f23534r;
        }

        /* renamed from: y */
        public String m12031y() {
            Object obj = this.f23529m;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23529m = s;
            }
            return s;
        }

        @Deprecated
        /* renamed from: z */
        public boolean m12030z() {
            return this.f23526j;
        }
    }

    /* renamed from: h.i.g.k$u */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$u.class */
    public interface AbstractC10391u extends AbstractC10482x.AbstractC10490f<C10386t> {
    }

    /* renamed from: h.i.g.k$v */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$v.class */
    public static final class C10392v extends AbstractC10482x.AbstractC10488e<C10392v> implements AbstractC10395w {

        /* renamed from: m */
        public static final C10392v f23571m = new C10392v();
        @Deprecated

        /* renamed from: n */
        public static final AbstractC10462s0<C10392v> f23572n = new C10393a();

        /* renamed from: f */
        public int f23573f;

        /* renamed from: g */
        public boolean f23574g;

        /* renamed from: h */
        public boolean f23575h;

        /* renamed from: i */
        public boolean f23576i;

        /* renamed from: j */
        public boolean f23577j;

        /* renamed from: k */
        public List<C10357l0> f23578k;

        /* renamed from: l */
        public byte f23579l;

        /* renamed from: h.i.g.k$v$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$v$a.class */
        public static final class C10393a extends AbstractC10235c<C10392v> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10392v mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10392v(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$v$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$v$b.class */
        public static final class C10394b extends AbstractC10482x.AbstractC10487d<C10392v, C10394b> implements AbstractC10395w {

            /* renamed from: f */
            public int f23580f;

            /* renamed from: g */
            public boolean f23581g;

            /* renamed from: h */
            public boolean f23582h;

            /* renamed from: i */
            public boolean f23583i;

            /* renamed from: j */
            public boolean f23584j;

            /* renamed from: k */
            public List<C10357l0> f23585k;

            /* renamed from: l */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23586l;

            public C10394b() {
                this.f23585k = Collections.emptyList();
                m11984p();
            }

            public C10394b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23585k = Collections.emptyList();
                m11984p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10392v mo11825E() {
                int i;
                C10392v vVar = new C10392v(this);
                int i2 = this.f23580f;
                if ((i2 & 1) != 0) {
                    vVar.f23574g = this.f23581g;
                    i = 1;
                } else {
                    i = 0;
                }
                int i3 = i;
                if ((i2 & 2) != 0) {
                    vVar.f23575h = this.f23582h;
                    i3 = i | 2;
                }
                int i4 = i3;
                if ((i2 & 4) != 0) {
                    vVar.f23576i = this.f23583i;
                    i4 = i3 | 4;
                }
                int i5 = i4;
                if ((i2 & 8) != 0) {
                    vVar.f23577j = this.f23584j;
                    i5 = i4 | 8;
                }
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23586l;
                if (w0Var == null) {
                    if ((this.f23580f & 16) != 0) {
                        this.f23585k = Collections.unmodifiableList(this.f23585k);
                        this.f23580f &= -17;
                    }
                    vVar.f23578k = this.f23585k;
                } else {
                    vVar.f23578k = w0Var.m11704b();
                }
                vVar.f23573f = i5;
                m11658j();
                return vVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10394b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10392v.C10394b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$v> r0 = p081h.p203i.p401g.C10295k.C10392v.f23572n     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$v r0 = (p081h.p203i.p401g.C10295k.C10392v) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$v$b r0 = r0.m11991a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$v r0 = (p081h.p203i.p401g.C10295k.C10392v) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$v$b r0 = r0.m11991a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10392v.C10394b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$v$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10394b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10392v) {
                    m11991a((C10392v) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10394b m11991a(C10392v vVar) {
                if (vVar == C10392v.m12009E()) {
                    return this;
                }
                if (vVar.m12011C()) {
                    m11988c(vVar.m11995w());
                }
                if (vVar.m12010D()) {
                    m11987d(vVar.m11994x());
                }
                if (vVar.m12013A()) {
                    m11990a(vVar.m11997u());
                }
                if (vVar.m12012B()) {
                    m11989b(vVar.m11996v());
                }
                if (this.f23586l == null) {
                    if (!vVar.f23578k.isEmpty()) {
                        if (this.f23585k.isEmpty()) {
                            this.f23585k = vVar.f23578k;
                            this.f23580f &= -17;
                        } else {
                            m11986n();
                            this.f23585k.addAll(vVar.f23578k);
                        }
                        m11657k();
                    }
                } else if (!vVar.f23578k.isEmpty()) {
                    if (this.f23586l.m11700f()) {
                        this.f23586l.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23586l = null;
                        this.f23585k = vVar.f23578k;
                        this.f23580f &= -17;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m11985o();
                        }
                        this.f23586l = w0Var;
                    } else {
                        this.f23586l.m11705a(vVar.f23578k);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) vVar);
                mo11668b(vVar.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10394b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10394b) super.mo11655a(gVar, obj);
            }

            /* renamed from: a */
            public C10394b m11990a(boolean z) {
                this.f23580f |= 4;
                this.f23583i = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10394b mo11668b(C10247f1 f1Var) {
                return (C10394b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10394b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10394b) super.mo11652b(gVar, obj);
            }

            /* renamed from: b */
            public C10394b m11989b(boolean z) {
                this.f23580f |= 8;
                this.f23584j = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10392v mo11818b() {
                return C10392v.m12009E();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10392v build() {
                C10392v E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            /* renamed from: c */
            public C10394b m11988c(boolean z) {
                this.f23580f |= 1;
                this.f23581g = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23136B;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10394b clone() {
                return (C10394b) super.clone();
            }

            /* renamed from: d */
            public C10394b m11987d(boolean z) {
                this.f23580f |= 2;
                this.f23582h = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23137C;
                gVar.m11629a(C10392v.class, C10394b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m11986n() {
                if ((this.f23580f & 16) == 0) {
                    this.f23585k = new ArrayList(this.f23585k);
                    this.f23580f |= 16;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m11985o() {
                if (this.f23586l == null) {
                    this.f23586l = new C10478w0<>(this.f23585k, (this.f23580f & 16) != 0, m11661g(), m11659i());
                    this.f23585k = null;
                }
                return this.f23586l;
            }

            /* renamed from: p */
            public final void m11984p() {
                if (AbstractC10482x.f23816d) {
                    m11985o();
                }
            }
        }

        public C10392v() {
            this.f23579l = (byte) (-1);
            this.f23578k = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10392v(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int r = hVar.mo12899r();
                            if (r != 0) {
                                if (r == 8) {
                                    this.f23573f |= 1;
                                    this.f23574g = hVar.mo12920b();
                                } else if (r == 16) {
                                    this.f23573f |= 2;
                                    this.f23575h = hVar.mo12920b();
                                } else if (r == 24) {
                                    this.f23573f |= 4;
                                    this.f23576i = hVar.mo12920b();
                                } else if (r == 56) {
                                    this.f23573f |= 8;
                                    this.f23577j = hVar.mo12920b();
                                } else if (r == 7994) {
                                    i = i;
                                    if ((i & 16) == 0) {
                                        this.f23578k = new ArrayList();
                                        i |= 16;
                                    }
                                    this.f23578k.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                } else if (!mo11647a(hVar, d, rVar, r)) {
                                }
                            }
                            z = true;
                        } catch (C10222a0 e) {
                            e.m13078a(this);
                            throw e;
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 16) != 0) {
                            this.f23578k = Collections.unmodifiableList(this.f23578k);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10392v(AbstractC10482x.AbstractC10487d<C10392v, ?> dVar) {
            super(dVar);
            this.f23579l = (byte) (-1);
        }

        /* renamed from: E */
        public static C10392v m12009E() {
            return f23571m;
        }

        /* renamed from: F */
        public static final C10418l.C10420b m12008F() {
            return C10295k.f23136B;
        }

        /* renamed from: G */
        public static C10394b m12007G() {
            return f23571m.mo11826f();
        }

        /* renamed from: b */
        public static C10394b m12001b(C10392v vVar) {
            C10394b f = f23571m.mo11826f();
            f.m11991a(vVar);
            return f;
        }

        /* renamed from: A */
        public boolean m12013A() {
            return (this.f23573f & 4) != 0;
        }

        /* renamed from: B */
        public boolean m12012B() {
            return (this.f23573f & 8) != 0;
        }

        /* renamed from: C */
        public boolean m12011C() {
            boolean z = true;
            if ((this.f23573f & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: D */
        public boolean m12010D() {
            return (this.f23573f & 2) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10394b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10394b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            if ((this.f23573f & 1) != 0) {
                iVar.mo12817a(1, this.f23574g);
            }
            if ((this.f23573f & 2) != 0) {
                iVar.mo12817a(2, this.f23575h);
            }
            if ((this.f23573f & 4) != 0) {
                iVar.mo12817a(3, this.f23576i);
            }
            if ((this.f23573f & 8) != 0) {
                iVar.mo12817a(7, this.f23577j);
            }
            for (int i = 0; i < this.f23578k.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23578k.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        /* renamed from: b */
        public C10357l0 m12002b(int i) {
            return this.f23578k.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10392v mo11818b() {
            return f23571m;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10394b mo11827e() {
            return m12007G();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10392v)) {
                return super.equals(obj);
            }
            C10392v vVar = (C10392v) obj;
            if (m12011C() != vVar.m12011C()) {
                return false;
            }
            if ((m12011C() && m11995w() != vVar.m11995w()) || m12010D() != vVar.m12010D()) {
                return false;
            }
            if ((m12010D() && m11994x() != vVar.m11994x()) || m12013A() != vVar.m12013A()) {
                return false;
            }
            if ((!m12013A() || m11997u() == vVar.m11997u()) && m12012B() == vVar.m12012B()) {
                return (!m12012B() || m11996v() == vVar.m11996v()) && m11992z().equals(vVar.m11992z()) && this.f23817c.equals(vVar.f23817c) && m11638s().equals(vVar.m11638s());
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10394b mo11826f() {
            C10394b bVar;
            if (this == f23571m) {
                bVar = new C10394b();
            } else {
                bVar = new C10394b();
                bVar.m11991a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int b = (this.f23573f & 1) != 0 ? AbstractC10274i.m12865b(1, this.f23574g) + 0 : 0;
            int i2 = b;
            if ((this.f23573f & 2) != 0) {
                i2 = b + AbstractC10274i.m12865b(2, this.f23575h);
            }
            int i3 = i2;
            if ((this.f23573f & 4) != 0) {
                i3 = i2 + AbstractC10274i.m12865b(3, this.f23576i);
            }
            int i4 = i3;
            int i5 = 0;
            if ((this.f23573f & 8) != 0) {
                i4 = i3 + AbstractC10274i.m12865b(7, this.f23577j);
                i5 = 0;
            }
            while (i5 < this.f23578k.size()) {
                i4 += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23578k.get(i5));
                i5++;
            }
            int r = i4 + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m12008F().hashCode();
            int i2 = hashCode;
            if (m12011C()) {
                i2 = (((hashCode * 37) + 1) * 53) + C10516z.m11543a(m11995w());
            }
            int i3 = i2;
            if (m12010D()) {
                i3 = (((i2 * 37) + 2) * 53) + C10516z.m11543a(m11994x());
            }
            int i4 = i3;
            if (m12013A()) {
                i4 = (((i3 * 37) + 3) * 53) + C10516z.m11543a(m11997u());
            }
            int i5 = i4;
            if (m12012B()) {
                i5 = (((i4 * 37) + 7) * 53) + C10516z.m11543a(m11996v());
            }
            int i6 = i5;
            if (m11993y() > 0) {
                i6 = (((i5 * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m11992z().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i6, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23579l;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m11993y(); i++) {
                if (!m12002b(i).isInitialized()) {
                    this.f23579l = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23579l = (byte) 0;
                return false;
            }
            this.f23579l = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10392v> mo11677j() {
            return f23572n;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23137C;
            gVar.m11629a(C10392v.class, C10394b.class);
            return gVar;
        }

        /* renamed from: u */
        public boolean m11997u() {
            return this.f23576i;
        }

        /* renamed from: v */
        public boolean m11996v() {
            return this.f23577j;
        }

        /* renamed from: w */
        public boolean m11995w() {
            return this.f23574g;
        }

        /* renamed from: x */
        public boolean m11994x() {
            return this.f23575h;
        }

        /* renamed from: y */
        public int m11993y() {
            return this.f23578k.size();
        }

        /* renamed from: z */
        public List<C10357l0> m11992z() {
            return this.f23578k;
        }
    }

    /* renamed from: h.i.g.k$w */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$w.class */
    public interface AbstractC10395w extends AbstractC10482x.AbstractC10490f<C10392v> {
    }

    /* renamed from: h.i.g.k$x */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$x.class */
    public static final class C10396x extends AbstractC10482x implements AbstractC10399y {

        /* renamed from: m */
        public static final C10396x f23587m = new C10396x();
        @Deprecated

        /* renamed from: n */
        public static final AbstractC10462s0<C10396x> f23588n = new C10397a();

        /* renamed from: e */
        public int f23589e;

        /* renamed from: f */
        public volatile Object f23590f;

        /* renamed from: g */
        public volatile Object f23591g;

        /* renamed from: h */
        public volatile Object f23592h;

        /* renamed from: i */
        public C10400z f23593i;

        /* renamed from: j */
        public boolean f23594j;

        /* renamed from: k */
        public boolean f23595k;

        /* renamed from: l */
        public byte f23596l;

        /* renamed from: h.i.g.k$x$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$x$a.class */
        public static final class C10397a extends AbstractC10235c<C10396x> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10396x mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10396x(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$x$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$x$b.class */
        public static final class C10398b extends AbstractC10482x.AbstractC10484b<C10398b> implements AbstractC10399y {

            /* renamed from: e */
            public int f23597e;

            /* renamed from: f */
            public Object f23598f;

            /* renamed from: g */
            public Object f23599g;

            /* renamed from: h */
            public Object f23600h;

            /* renamed from: i */
            public C10400z f23601i;

            /* renamed from: j */
            public C10506x0<C10400z, C10400z.C10402b, AbstractC10297a0> f23602j;

            /* renamed from: k */
            public boolean f23603k;

            /* renamed from: l */
            public boolean f23604l;

            public C10398b() {
                this.f23598f = "";
                this.f23599g = "";
                this.f23600h = "";
                m11952n();
            }

            public C10398b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23598f = "";
                this.f23599g = "";
                this.f23600h = "";
                m11952n();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10396x mo11825E() {
                C10396x xVar = new C10396x(this);
                int i = this.f23597e;
                int i2 = (i & 1) != 0 ? 1 : 0;
                xVar.f23590f = this.f23598f;
                int i3 = i2;
                if ((i & 2) != 0) {
                    i3 = i2 | 2;
                }
                xVar.f23591g = this.f23599g;
                int i4 = i3;
                if ((i & 4) != 0) {
                    i4 = i3 | 4;
                }
                xVar.f23592h = this.f23600h;
                int i5 = i4;
                if ((i & 8) != 0) {
                    C10506x0<C10400z, C10400z.C10402b, AbstractC10297a0> x0Var = this.f23602j;
                    if (x0Var == null) {
                        xVar.f23593i = this.f23601i;
                    } else {
                        xVar.f23593i = x0Var.m11583b();
                    }
                    i5 = i4 | 8;
                }
                int i6 = i5;
                if ((i & 16) != 0) {
                    xVar.f23594j = this.f23603k;
                    i6 = i5 | 16;
                }
                int i7 = i6;
                if ((i & 32) != 0) {
                    xVar.f23595k = this.f23604l;
                    i7 = i6 | 32;
                }
                xVar.f23589e = i7;
                m11658j();
                return xVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10398b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10396x.C10398b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$x> r0 = p081h.p203i.p401g.C10295k.C10396x.f23588n     // Catch: all -> 0x001c, a0 -> 0x0024
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0024
                    h.i.g.k$x r0 = (p081h.p203i.p401g.C10295k.C10396x) r0     // Catch: all -> 0x001c, a0 -> 0x0024
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$x$b r0 = r0.m11958a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    r0 = r6
                    r7 = r0
                    goto L_0x0037
                L_0x0024:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$x r0 = (p081h.p203i.p401g.C10295k.C10396x) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0032
                    throw r0     // Catch: all -> 0x0032
                L_0x0032:
                    r5 = move-exception
                    r0 = r5
                    r7 = r0
                    r0 = r6
                    r5 = r0
                L_0x0037:
                    r0 = r5
                    if (r0 == 0) goto L_0x0041
                    r0 = r4
                    r1 = r5
                    h.i.g.k$x$b r0 = r0.m11958a(r1)
                L_0x0041:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10396x.C10398b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$x$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10398b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10396x) {
                    m11958a((C10396x) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10398b m11958a(C10396x xVar) {
                if (xVar == C10396x.m11981C()) {
                    return this;
                }
                if (xVar.m11960y()) {
                    this.f23597e |= 1;
                    this.f23598f = xVar.f23590f;
                    m11657k();
                }
                if (xVar.m11961x()) {
                    this.f23597e |= 2;
                    this.f23599g = xVar.f23591g;
                    m11657k();
                }
                if (xVar.m11983A()) {
                    this.f23597e |= 4;
                    this.f23600h = xVar.f23592h;
                    m11657k();
                }
                if (xVar.m11959z()) {
                    m11957a(xVar.m11965t());
                }
                if (xVar.m11962w()) {
                    m11956a(xVar.m11968q());
                }
                if (xVar.m11982B()) {
                    m11955b(xVar.m11963v());
                }
                mo11668b(xVar.f23817c);
                m11657k();
                return this;
            }

            /* renamed from: a */
            public C10398b m11957a(C10400z zVar) {
                C10400z zVar2;
                C10506x0<C10400z, C10400z.C10402b, AbstractC10297a0> x0Var = this.f23602j;
                if (x0Var == null) {
                    if ((this.f23597e & 8) == 0 || (zVar2 = this.f23601i) == null || zVar2 == C10400z.m11951A()) {
                        this.f23601i = zVar;
                    } else {
                        C10400z.C10402b b = C10400z.m11943b(this.f23601i);
                        b.m11934a(zVar);
                        this.f23601i = b.mo11825E();
                    }
                    m11657k();
                } else {
                    x0Var.m11584a(zVar);
                }
                this.f23597e |= 8;
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10398b mo11655a(C10418l.C10428g gVar, Object obj) {
                super.mo11655a(gVar, obj);
                return this;
            }

            /* renamed from: a */
            public C10398b m11956a(boolean z) {
                this.f23597e |= 16;
                this.f23603k = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10398b mo11668b(C10247f1 f1Var) {
                return (C10398b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10398b mo11652b(C10418l.C10428g gVar, Object obj) {
                super.mo11652b(gVar, obj);
                return this;
            }

            /* renamed from: b */
            public C10398b m11955b(boolean z) {
                this.f23597e |= 32;
                this.f23604l = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10396x mo11818b() {
                return C10396x.m11981C();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10396x build() {
                C10396x E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23184x;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10398b clone() {
                return (C10398b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23185y;
                gVar.m11629a(C10396x.class, C10398b.class);
                return gVar;
            }

            /* renamed from: l */
            public C10400z m11954l() {
                C10506x0<C10400z, C10400z.C10402b, AbstractC10297a0> x0Var = this.f23602j;
                if (x0Var != null) {
                    return x0Var.m11581d();
                }
                C10400z zVar = this.f23601i;
                C10400z zVar2 = zVar;
                if (zVar == null) {
                    zVar2 = C10400z.m11951A();
                }
                return zVar2;
            }

            /* renamed from: m */
            public final C10506x0<C10400z, C10400z.C10402b, AbstractC10297a0> m11953m() {
                if (this.f23602j == null) {
                    this.f23602j = new C10506x0<>(m11954l(), m11661g(), m11659i());
                    this.f23601i = null;
                }
                return this.f23602j;
            }

            /* renamed from: n */
            public final void m11952n() {
                if (AbstractC10482x.f23816d) {
                    m11953m();
                }
            }
        }

        public C10396x() {
            this.f23596l = (byte) (-1);
            this.f23590f = "";
            this.f23591g = "";
            this.f23592h = "";
        }

        public C10396x(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 10) {
                                        AbstractC10253g c = hVar.mo12918c();
                                        this.f23589e = 1 | this.f23589e;
                                        this.f23590f = c;
                                    } else if (r == 18) {
                                        AbstractC10253g c2 = hVar.mo12918c();
                                        this.f23589e |= 2;
                                        this.f23591g = c2;
                                    } else if (r == 26) {
                                        AbstractC10253g c3 = hVar.mo12918c();
                                        this.f23589e |= 4;
                                        this.f23592h = c3;
                                    } else if (r == 34) {
                                        C10400z.C10402b f = (this.f23589e & 8) != 0 ? this.f23593i.mo11826f() : null;
                                        this.f23593i = (C10400z) hVar.mo12921a(C10400z.f23606l, rVar);
                                        if (f != null) {
                                            f.m11934a(this.f23593i);
                                            this.f23593i = f.mo11825E();
                                        }
                                        this.f23589e |= 8;
                                    } else if (r == 40) {
                                        this.f23589e |= 16;
                                        this.f23594j = hVar.mo12920b();
                                    } else if (r == 48) {
                                        this.f23589e |= 32;
                                        this.f23595k = hVar.mo12920b();
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e) {
                                e.m13078a(this);
                                throw e;
                            }
                        } catch (IOException e2) {
                            C10222a0 a0Var = new C10222a0(e2);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10396x(AbstractC10482x.AbstractC10484b<?> bVar) {
            super(bVar);
            this.f23596l = (byte) (-1);
        }

        /* renamed from: C */
        public static C10396x m11981C() {
            return f23587m;
        }

        /* renamed from: D */
        public static final C10418l.C10420b m11980D() {
            return C10295k.f23184x;
        }

        /* renamed from: E */
        public static C10398b m11979E() {
            return f23587m.mo11826f();
        }

        /* renamed from: A */
        public boolean m11983A() {
            return (this.f23589e & 4) != 0;
        }

        /* renamed from: B */
        public boolean m11982B() {
            return (this.f23589e & 32) != 0;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10398b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10398b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            if ((this.f23589e & 1) != 0) {
                AbstractC10482x.m11691a(iVar, 1, this.f23590f);
            }
            if ((this.f23589e & 2) != 0) {
                AbstractC10482x.m11691a(iVar, 2, this.f23591g);
            }
            if ((this.f23589e & 4) != 0) {
                AbstractC10482x.m11691a(iVar, 3, this.f23592h);
            }
            if ((this.f23589e & 8) != 0) {
                iVar.mo12808b(4, m11965t());
            }
            if ((this.f23589e & 16) != 0) {
                iVar.mo12817a(5, this.f23594j);
            }
            if ((this.f23589e & 32) != 0) {
                iVar.mo12817a(6, this.f23595k);
            }
            this.f23817c.mo11692a(iVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10396x mo11818b() {
            return f23587m;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10398b mo11827e() {
            return m11979E();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10396x)) {
                return super.equals(obj);
            }
            C10396x xVar = (C10396x) obj;
            if (m11960y() != xVar.m11960y()) {
                return false;
            }
            if ((m11960y() && !m11966s().equals(xVar.m11966s())) || m11961x() != xVar.m11961x()) {
                return false;
            }
            if ((m11961x() && !m11967r().equals(xVar.m11967r())) || m11983A() != xVar.m11983A()) {
                return false;
            }
            if ((m11983A() && !m11964u().equals(xVar.m11964u())) || m11959z() != xVar.m11959z()) {
                return false;
            }
            if ((m11959z() && !m11965t().equals(xVar.m11965t())) || m11962w() != xVar.m11962w()) {
                return false;
            }
            if ((!m11962w() || m11968q() == xVar.m11968q()) && m11982B() == xVar.m11982B()) {
                return (!m11982B() || m11963v() == xVar.m11963v()) && this.f23817c.equals(xVar.f23817c);
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10398b mo11826f() {
            C10398b bVar;
            if (this == f23587m) {
                bVar = new C10398b();
            } else {
                bVar = new C10398b();
                bVar.m11958a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f23589e & 1) != 0) {
                i2 = 0 + AbstractC10482x.m11694a(1, this.f23590f);
            }
            int i3 = i2;
            if ((this.f23589e & 2) != 0) {
                i3 = i2 + AbstractC10482x.m11694a(2, this.f23591g);
            }
            int i4 = i3;
            if ((this.f23589e & 4) != 0) {
                i4 = i3 + AbstractC10482x.m11694a(3, this.f23592h);
            }
            int i5 = i4;
            if ((this.f23589e & 8) != 0) {
                i5 = i4 + AbstractC10274i.m12840f(4, m11965t());
            }
            int i6 = i5;
            if ((this.f23589e & 16) != 0) {
                i6 = i5 + AbstractC10274i.m12865b(5, this.f23594j);
            }
            int i7 = i6;
            if ((this.f23589e & 32) != 0) {
                i7 = i6 + AbstractC10274i.m12865b(6, this.f23595k);
            }
            int h = i7 + this.f23817c.mo11678h();
            this.f23054b = h;
            return h;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m11980D().hashCode();
            int i2 = hashCode;
            if (m11960y()) {
                i2 = (((hashCode * 37) + 1) * 53) + m11966s().hashCode();
            }
            int i3 = i2;
            if (m11961x()) {
                i3 = (((i2 * 37) + 2) * 53) + m11967r().hashCode();
            }
            int i4 = i3;
            if (m11983A()) {
                i4 = (((i3 * 37) + 3) * 53) + m11964u().hashCode();
            }
            int i5 = i4;
            if (m11959z()) {
                i5 = (((i4 * 37) + 4) * 53) + m11965t().hashCode();
            }
            int i6 = i5;
            if (m11962w()) {
                i6 = (((i5 * 37) + 5) * 53) + C10516z.m11543a(m11968q());
            }
            int i7 = i6;
            if (m11982B()) {
                i7 = (((i6 * 37) + 6) * 53) + C10516z.m11543a(m11963v());
            }
            int hashCode2 = (i7 * 29) + this.f23817c.hashCode();
            this.f23058a = hashCode2;
            return hashCode2;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23596l;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (!m11959z() || m11965t().isInitialized()) {
                this.f23596l = (byte) 1;
                return true;
            }
            this.f23596l = (byte) 0;
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10396x> mo11677j() {
            return f23588n;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23185y;
            gVar.m11629a(C10396x.class, C10398b.class);
            return gVar;
        }

        /* renamed from: q */
        public boolean m11968q() {
            return this.f23594j;
        }

        /* renamed from: r */
        public String m11967r() {
            Object obj = this.f23591g;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23591g = s;
            }
            return s;
        }

        /* renamed from: s */
        public String m11966s() {
            Object obj = this.f23590f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23590f = s;
            }
            return s;
        }

        /* renamed from: t */
        public C10400z m11965t() {
            C10400z zVar = this.f23593i;
            C10400z zVar2 = zVar;
            if (zVar == null) {
                zVar2 = C10400z.m11951A();
            }
            return zVar2;
        }

        /* renamed from: u */
        public String m11964u() {
            Object obj = this.f23592h;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC10253g gVar = (AbstractC10253g) obj;
            String s = gVar.m12963s();
            if (gVar.mo12953b()) {
                this.f23592h = s;
            }
            return s;
        }

        /* renamed from: v */
        public boolean m11963v() {
            return this.f23595k;
        }

        /* renamed from: w */
        public boolean m11962w() {
            return (this.f23589e & 16) != 0;
        }

        /* renamed from: x */
        public boolean m11961x() {
            return (this.f23589e & 2) != 0;
        }

        /* renamed from: y */
        public boolean m11960y() {
            boolean z = true;
            if ((this.f23589e & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: z */
        public boolean m11959z() {
            return (this.f23589e & 8) != 0;
        }
    }

    /* renamed from: h.i.g.k$y */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$y.class */
    public interface AbstractC10399y extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.k$z */
    /* loaded from: classes2-dex2jar.jar:h/i/g/k$z.class */
    public static final class C10400z extends AbstractC10482x.AbstractC10488e<C10400z> implements AbstractC10297a0 {

        /* renamed from: k */
        public static final C10400z f23605k = new C10400z();
        @Deprecated

        /* renamed from: l */
        public static final AbstractC10462s0<C10400z> f23606l = new C10401a();

        /* renamed from: f */
        public int f23607f;

        /* renamed from: g */
        public boolean f23608g;

        /* renamed from: h */
        public int f23609h;

        /* renamed from: i */
        public List<C10357l0> f23610i;

        /* renamed from: j */
        public byte f23611j;

        /* renamed from: h.i.g.k$z$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$z$a.class */
        public static final class C10401a extends AbstractC10235c<C10400z> {
            @Override // p081h.p203i.p401g.AbstractC10462s0
            /* renamed from: a */
            public C10400z mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
                return new C10400z(hVar, rVar);
            }
        }

        /* renamed from: h.i.g.k$z$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$z$b.class */
        public static final class C10402b extends AbstractC10482x.AbstractC10487d<C10400z, C10402b> implements AbstractC10297a0 {

            /* renamed from: f */
            public int f23612f;

            /* renamed from: g */
            public boolean f23613g;

            /* renamed from: h */
            public int f23614h;

            /* renamed from: i */
            public List<C10357l0> f23615i;

            /* renamed from: j */
            public C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> f23616j;

            public C10402b() {
                this.f23614h = 0;
                this.f23615i = Collections.emptyList();
                m11930p();
            }

            public C10402b(AbstractC10482x.AbstractC10486c cVar) {
                super(cVar);
                this.f23614h = 0;
                this.f23615i = Collections.emptyList();
                m11930p();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: E */
            public C10400z mo11825E() {
                int i;
                C10400z zVar = new C10400z(this);
                int i2 = this.f23612f;
                if ((i2 & 1) != 0) {
                    zVar.f23608g = this.f23613g;
                    i = 1;
                } else {
                    i = 0;
                }
                int i3 = i;
                if ((i2 & 2) != 0) {
                    i3 = i | 2;
                }
                zVar.f23609h = this.f23614h;
                C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = this.f23616j;
                if (w0Var == null) {
                    if ((this.f23612f & 4) != 0) {
                        this.f23615i = Collections.unmodifiableList(this.f23615i);
                        this.f23612f &= -5;
                    }
                    zVar.f23610i = this.f23615i;
                } else {
                    zVar.f23610i = w0Var.m11704b();
                }
                zVar.f23607f = i3;
                m11658j();
                return zVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public final C10402b mo11672a(C10247f1 f1Var) {
                super.mo11672a(f1Var);
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public p081h.p203i.p401g.C10295k.C10400z.C10402b mo11837a(p081h.p203i.p401g.AbstractC10267h r5, p081h.p203i.p401g.C10459r r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    h.i.g.s0<h.i.g.k$z> r0 = p081h.p203i.p401g.C10295k.C10400z.f23606l     // Catch: all -> 0x001c, a0 -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo11788a(r1, r2)     // Catch: all -> 0x001c, a0 -> 0x0022
                    h.i.g.k$z r0 = (p081h.p203i.p401g.C10295k.C10400z) r0     // Catch: all -> 0x001c, a0 -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    h.i.g.k$z$b r0 = r0.m11934a(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x0031
                L_0x0022:
                    r5 = move-exception
                    r0 = r5
                    h.i.g.l0 r0 = r0.m13079a()     // Catch: all -> 0x001c
                    h.i.g.k$z r0 = (p081h.p203i.p401g.C10295k.C10400z) r0     // Catch: all -> 0x001c
                    r6 = r0
                    r0 = r5
                    java.io.IOException r0 = r0.m13077b()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r5 = move-exception
                L_0x0031:
                    r0 = r6
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r6
                    h.i.g.k$z$b r0 = r0.m11934a(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10295k.C10400z.C10402b.mo11837a(h.i.g.h, h.i.g.r):h.i.g.k$z$b");
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10402b mo11824a(AbstractC10287j0 j0Var) {
                if (j0Var instanceof C10400z) {
                    m11934a((C10400z) j0Var);
                    return this;
                }
                super.mo11824a(j0Var);
                return this;
            }

            /* renamed from: a */
            public C10402b m11935a(EnumC10403c cVar) {
                if (cVar != null) {
                    this.f23612f |= 2;
                    this.f23614h = cVar.getNumber();
                    m11657k();
                    return this;
                }
                throw new NullPointerException();
            }

            /* renamed from: a */
            public C10402b m11934a(C10400z zVar) {
                if (zVar == C10400z.m11951A()) {
                    return this;
                }
                if (zVar.m11937y()) {
                    m11933a(zVar.m11941u());
                }
                if (zVar.m11936z()) {
                    m11935a(zVar.m11940v());
                }
                if (this.f23616j == null) {
                    if (!zVar.f23610i.isEmpty()) {
                        if (this.f23615i.isEmpty()) {
                            this.f23615i = zVar.f23610i;
                            this.f23612f &= -5;
                        } else {
                            m11932n();
                            this.f23615i.addAll(zVar.f23610i);
                        }
                        m11657k();
                    }
                } else if (!zVar.f23610i.isEmpty()) {
                    if (this.f23616j.m11700f()) {
                        this.f23616j.m11703c();
                        C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> w0Var = null;
                        this.f23616j = null;
                        this.f23615i = zVar.f23610i;
                        this.f23612f &= -5;
                        if (AbstractC10482x.f23816d) {
                            w0Var = m11931o();
                        }
                        this.f23616j = w0Var;
                    } else {
                        this.f23616j.m11705a(zVar.f23610i);
                    }
                }
                m11653a((AbstractC10482x.AbstractC10488e) zVar);
                mo11668b(zVar.f23817c);
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: a */
            public C10402b mo11655a(C10418l.C10428g gVar, Object obj) {
                return (C10402b) super.mo11655a(gVar, obj);
            }

            /* renamed from: a */
            public C10402b m11933a(boolean z) {
                this.f23612f |= 1;
                this.f23613g = z;
                m11657k();
                return this;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            /* renamed from: b */
            public final C10402b mo11668b(C10247f1 f1Var) {
                return (C10402b) super.mo11668b(f1Var);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10487d, p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
            /* renamed from: b */
            public C10402b mo11652b(C10418l.C10428g gVar, Object obj) {
                return (C10402b) super.mo11652b(gVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: b */
            public C10400z mo11818b() {
                return C10400z.m11951A();
            }

            @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
            public C10400z build() {
                C10400z E = mo11825E();
                if (E.isInitialized()) {
                    return E;
                }
                throw AbstractC10219a.AbstractC10220a.m13080b(E);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
            /* renamed from: c */
            public C10418l.C10420b mo11666c() {
                return C10295k.f23148N;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
            public C10402b clone() {
                return (C10402b) super.clone();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b
            /* renamed from: h */
            public AbstractC10482x.C10491g mo11660h() {
                AbstractC10482x.C10491g gVar = C10295k.f23149O;
                gVar.m11629a(C10400z.class, C10402b.class);
                return gVar;
            }

            /* renamed from: n */
            public final void m11932n() {
                if ((this.f23612f & 4) == 0) {
                    this.f23615i = new ArrayList(this.f23615i);
                    this.f23612f |= 4;
                }
            }

            /* renamed from: o */
            public final C10478w0<C10357l0, C10357l0.C10359b, AbstractC10365m0> m11931o() {
                if (this.f23616j == null) {
                    this.f23616j = new C10478w0<>(this.f23615i, (this.f23612f & 4) != 0, m11661g(), m11659i());
                    this.f23615i = null;
                }
                return this.f23616j;
            }

            /* renamed from: p */
            public final void m11930p() {
                if (AbstractC10482x.f23816d) {
                    m11931o();
                }
            }
        }

        /* renamed from: h.i.g.k$z$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/k$z$c.class */
        public enum EnumC10403c implements AbstractC10469u0 {
            IDEMPOTENCY_UNKNOWN(0),
            NO_SIDE_EFFECTS(1),
            IDEMPOTENT(2);
            

            /* renamed from: a */
            public final int f23621a;

            /* renamed from: h.i.g.k$z$c$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/k$z$c$a.class */
            public static final class C10404a implements C10516z.AbstractC10518b<EnumC10403c> {
            }

            static {
                new C10404a();
                values();
            }

            EnumC10403c(int i) {
                this.f23621a = i;
            }

            /* renamed from: a */
            public static EnumC10403c m11929a(int i) {
                if (i == 0) {
                    return IDEMPOTENCY_UNKNOWN;
                }
                if (i == 1) {
                    return NO_SIDE_EFFECTS;
                }
                if (i != 2) {
                    return null;
                }
                return IDEMPOTENT;
            }

            @Deprecated
            /* renamed from: b */
            public static EnumC10403c m11928b(int i) {
                return m11929a(i);
            }

            @Override // p081h.p203i.p401g.C10516z.AbstractC10517a
            public final int getNumber() {
                return this.f23621a;
            }
        }

        public C10400z() {
            this.f23611j = (byte) (-1);
            this.f23609h = 0;
            this.f23610i = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C10400z(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            this();
            if (rVar != null) {
                C10247f1.C10249b d = C10247f1.m13019d();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            try {
                                int r = hVar.mo12899r();
                                if (r != 0) {
                                    if (r == 264) {
                                        this.f23607f |= 1;
                                        this.f23608g = hVar.mo12920b();
                                    } else if (r == 272) {
                                        int e = hVar.mo12914e();
                                        if (EnumC10403c.m11928b(e) == null) {
                                            d.m13016a(34, e);
                                        } else {
                                            this.f23607f |= 2;
                                            this.f23609h = e;
                                        }
                                    } else if (r == 7994) {
                                        i = i;
                                        if ((i & 4) == 0) {
                                            this.f23610i = new ArrayList();
                                            i |= 4;
                                        }
                                        this.f23610i.add(hVar.mo12921a(C10357l0.f23374o, rVar));
                                    } else if (!mo11647a(hVar, d, rVar, r)) {
                                    }
                                }
                                z = true;
                            } catch (C10222a0 e2) {
                                e2.m13078a(this);
                                throw e2;
                            }
                        } catch (IOException e3) {
                            C10222a0 a0Var = new C10222a0(e3);
                            a0Var.m13078a(this);
                            throw a0Var;
                        }
                    } finally {
                        if ((i & 4) != 0) {
                            this.f23610i = Collections.unmodifiableList(this.f23610i);
                        }
                        this.f23817c = d.build();
                        mo11641n();
                    }
                }
                return;
            }
            throw new NullPointerException();
        }

        public C10400z(AbstractC10482x.AbstractC10487d<C10400z, ?> dVar) {
            super(dVar);
            this.f23611j = (byte) (-1);
        }

        /* renamed from: A */
        public static C10400z m11951A() {
            return f23605k;
        }

        /* renamed from: B */
        public static final C10418l.C10420b m11950B() {
            return C10295k.f23148N;
        }

        /* renamed from: C */
        public static C10402b m11949C() {
            return f23605k.mo11826f();
        }

        /* renamed from: b */
        public static C10402b m11943b(C10400z zVar) {
            C10402b f = f23605k.mo11826f();
            f.m11934a(zVar);
            return f;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public C10402b mo11688a(AbstractC10482x.AbstractC10486c cVar) {
            return new C10402b(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: a */
        public void mo11692a(AbstractC10274i iVar) throws IOException {
            AbstractC10482x.AbstractC10488e<MessageType>.C10489a t = m11637t();
            if ((this.f23607f & 1) != 0) {
                iVar.mo12817a(33, this.f23608g);
            }
            if ((this.f23607f & 2) != 0) {
                iVar.m12879a(34, this.f23609h);
            }
            for (int i = 0; i < this.f23610i.size(); i++) {
                iVar.mo12808b(RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23610i.get(i));
            }
            t.m11636a(536870912, iVar);
            this.f23817c.mo11692a(iVar);
        }

        /* renamed from: b */
        public C10357l0 m11944b(int i) {
            return this.f23610i.get(i);
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public C10400z mo11818b() {
            return f23605k;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23817c;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: e */
        public C10402b mo11827e() {
            return m11949C();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10400z)) {
                return super.equals(obj);
            }
            C10400z zVar = (C10400z) obj;
            if (m11937y() != zVar.m11937y()) {
                return false;
            }
            if ((!m11937y() || m11941u() == zVar.m11941u()) && m11936z() == zVar.m11936z()) {
                return (!m11936z() || this.f23609h == zVar.f23609h) && m11938x().equals(zVar.m11938x()) && this.f23817c.equals(zVar.f23817c) && m11638s().equals(zVar.m11638s());
            }
            return false;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: f */
        public C10402b mo11826f() {
            C10402b bVar;
            if (this == f23605k) {
                bVar = new C10402b();
            } else {
                bVar = new C10402b();
                bVar.m11934a(this);
            }
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: h */
        public int mo11678h() {
            int i = this.f23054b;
            if (i != -1) {
                return i;
            }
            int b = (this.f23607f & 1) != 0 ? AbstractC10274i.m12865b(33, this.f23608g) + 0 : 0;
            int i2 = b;
            int i3 = 0;
            if ((this.f23607f & 2) != 0) {
                i2 = b + AbstractC10274i.m12846e(34, this.f23609h);
                i3 = 0;
            }
            while (i3 < this.f23610i.size()) {
                i2 += AbstractC10274i.m12840f((int) RoomDatabase.MAX_BIND_PARAMETER_CNT, this.f23610i.get(i3));
                i3++;
            }
            int r = i2 + m11639r() + this.f23817c.mo11678h();
            this.f23054b = r;
            return r;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a
        public int hashCode() {
            int i = this.f23058a;
            if (i != 0) {
                return i;
            }
            int hashCode = 779 + m11950B().hashCode();
            int i2 = hashCode;
            if (m11937y()) {
                i2 = (((hashCode * 37) + 33) * 53) + C10516z.m11543a(m11941u());
            }
            int i3 = i2;
            if (m11936z()) {
                i3 = (((i2 * 37) + 34) * 53) + this.f23609h;
            }
            int i4 = i3;
            if (m11939w() > 0) {
                i4 = (((i3 * 37) + RoomDatabase.MAX_BIND_PARAMETER_CNT) * 53) + m11938x().hashCode();
            }
            int a = (AbstractC10219a.m13088a(i4, m11638s()) * 29) + this.f23817c.hashCode();
            this.f23058a = a;
            return a;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10488e, p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public final boolean isInitialized() {
            byte b = this.f23611j;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            for (int i = 0; i < m11939w(); i++) {
                if (!m11944b(i).isInitialized()) {
                    this.f23611j = (byte) 0;
                    return false;
                }
            }
            if (!m11640q()) {
                this.f23611j = (byte) 0;
                return false;
            }
            this.f23611j = (byte) 1;
            return true;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10437l0
        /* renamed from: j */
        public AbstractC10462s0<C10400z> mo11677j() {
            return f23606l;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: m */
        public AbstractC10482x.C10491g mo11676m() {
            AbstractC10482x.C10491g gVar = C10295k.f23149O;
            gVar.m11629a(C10400z.class, C10402b.class);
            return gVar;
        }

        /* renamed from: u */
        public boolean m11941u() {
            return this.f23608g;
        }

        /* renamed from: v */
        public EnumC10403c m11940v() {
            EnumC10403c b = EnumC10403c.m11928b(this.f23609h);
            EnumC10403c cVar = b;
            if (b == null) {
                cVar = EnumC10403c.IDEMPOTENCY_UNKNOWN;
            }
            return cVar;
        }

        /* renamed from: w */
        public int m11939w() {
            return this.f23610i.size();
        }

        /* renamed from: x */
        public List<C10357l0> m11938x() {
            return this.f23610i;
        }

        /* renamed from: y */
        public boolean m11937y() {
            boolean z = true;
            if ((this.f23607f & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: z */
        public boolean m11936z() {
            return (this.f23607f & 2) != 0;
        }
    }

    static {
        new AbstractC10482x.C10491g(f23161a, new String[]{"File"});
        new AbstractC10482x.C10491g(f23158X, new String[]{"Annotation"});
        new AbstractC10482x.C10491g(f23159Y, new String[]{"Path", "SourceFile", "Begin", "End"});
    }

    /* renamed from: W */
    public static C10418l.C10431h m12698W() {
        return f23160Z;
    }
}
