.class public final Lcom/facebook/GraphRequest$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ee\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001b\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0002J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0007J\u0016\u0010?\u001a\u0008\u0012\u0004\u0012\u00020<0@2\u0006\u0010A\u001a\u00020BH\u0007J\'\u0010?\u001a\u0008\u0012\u0004\u0012\u00020<0@2\u0012\u0010A\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020>0C\"\u00020>H\u0007\u00a2\u0006\u0002\u0010DJ\u001c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020<0@2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0EH\u0007J\u0010\u0010F\u001a\u00020G2\u0006\u0010A\u001a\u00020BH\u0007J!\u0010F\u001a\u00020G2\u0012\u0010A\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020>0C\"\u00020>H\u0007\u00a2\u0006\u0002\u0010HJ\u0016\u0010F\u001a\u00020G2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0EH\u0007J\u001e\u0010I\u001a\u0008\u0012\u0004\u0012\u00020<0@2\u0006\u0010J\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J$\u0010I\u001a\u0008\u0012\u0004\u0012\u00020<0@2\u0006\u0010J\u001a\u0002082\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0EH\u0007J\"\u0010K\u001a\u00020G2\u0008\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010J\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J\u0018\u0010K\u001a\u00020G2\u0006\u0010J\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J\u0010\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020BH\u0002J\n\u0010P\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010Q\u001a\u00020\u00042\u0008\u0010R\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010S\u001a\u00020T2\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010U\u001a\u00020T2\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010V\u001a\u00020T2\u0006\u0010W\u001a\u00020\u0004H\u0002J\u0012\u0010X\u001a\u00020T2\u0008\u0010Y\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010Z\u001a\u00020T2\u0008\u0010Y\u001a\u0004\u0018\u00010\u0001H\u0002J$\u0010[\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0006\u0010^\u001a\u00020_2\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007J.\u0010[\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0006\u0010^\u001a\u00020_2\u0008\u0010b\u001a\u0004\u0018\u00010\u00042\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007J&\u0010c\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010d\u001a\u0004\u0018\u00010\u00042\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007J&\u0010e\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010R\u001a\u0004\u0018\u00010\u00042\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007J\u001c\u0010f\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010`\u001a\u0004\u0018\u00010gH\u0007J\u001c\u0010h\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010`\u001a\u0004\u0018\u00010iH\u0007J@\u0010j\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010k\u001a\u0004\u0018\u00010l2\u0006\u0010m\u001a\u00020 2\u0006\u0010n\u001a\u00020 2\u0008\u0010o\u001a\u0004\u0018\u00010\u00042\u0008\u0010`\u001a\u0004\u0018\u00010iH\u0007J0\u0010p\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010R\u001a\u0004\u0018\u00010\u00042\u0008\u0010q\u001a\u0004\u0018\u00010r2\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007JB\u0010s\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010R\u001a\u0004\u0018\u00010\u00042\u0006\u0010t\u001a\u00020u2\u0008\u0010v\u001a\u0004\u0018\u00010\u00042\u0008\u0010w\u001a\u0004\u0018\u00010x2\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007JB\u0010s\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010R\u001a\u0004\u0018\u00010\u00042\u0006\u0010y\u001a\u00020z2\u0008\u0010v\u001a\u0004\u0018\u00010\u00042\u0008\u0010w\u001a\u0004\u0018\u00010x2\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007JB\u0010s\u001a\u00020>2\u0008\u0010\\\u001a\u0004\u0018\u00010]2\u0008\u0010R\u001a\u0004\u0018\u00010\u00042\u0006\u0010{\u001a\u00020|2\u0008\u0010v\u001a\u0004\u0018\u00010\u00042\u0008\u0010w\u001a\u0004\u0018\u00010x2\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0007J\u0012\u0010}\u001a\u00020\u00042\u0008\u0010Y\u001a\u0004\u0018\u00010\u0001H\u0002J\"\u0010~\u001a\u00020\u007f2\u0006\u0010q\u001a\u00020r2\u0006\u0010W\u001a\u00020\u00042\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0002J-\u0010\u0082\u0001\u001a\u00020\u007f2\u0007\u0010\u0083\u0001\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u00012\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0084\u0001\u001a\u00020TH\u0002JA\u0010\u0085\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020B2\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020 2\u0006\u00109\u001a\u00020:2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u008b\u0001\u001a\u00020TH\u0002J&\u0010\u008c\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020B2\r\u0010\u008d\u0001\u001a\u0008\u0012\u0004\u0012\u00020<0@H\u0001\u00a2\u0006\u0003\u0008\u008e\u0001J*\u0010\u008f\u0001\u001a\u00020\u007f2\u0015\u0010\u0090\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0005\u0012\u00030\u0092\u00010\u0091\u00012\u0008\u0010\u0080\u0001\u001a\u00030\u0093\u0001H\u0002J$\u0010\u0094\u0001\u001a\u00020\u007f2\u0007\u0010\u0095\u0001\u001a\u00020x2\u0008\u0010\u0080\u0001\u001a\u00030\u0093\u00012\u0006\u0010=\u001a\u00020>H\u0002J8\u0010\u0096\u0001\u001a\u00020\u007f2\u0008\u0010\u0080\u0001\u001a\u00030\u0093\u00012\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0E2\u0015\u0010\u0090\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0005\u0012\u00030\u0092\u00010\u0097\u0001H\u0002J\u001f\u0010\u0098\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020B2\u0006\u0010J\u001a\u000208H\u0001\u00a2\u0006\u0003\u0008\u0099\u0001J\u001a\u0010\u009a\u0001\u001a\u00020\u007f2\u0006\u0010J\u001a\u0002082\u0007\u0010\u008b\u0001\u001a\u00020TH\u0002J\u0013\u0010\u009b\u0001\u001a\u00020\u007f2\u0008\u0010b\u001a\u0004\u0018\u00010\u0004H\u0007J\u0011\u0010\u009c\u0001\u001a\u0002082\u0006\u0010A\u001a\u00020BH\u0007J#\u0010\u009c\u0001\u001a\u0002082\u0012\u0010A\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020>0C\"\u00020>H\u0007\u00a2\u0006\u0003\u0010\u009d\u0001J\u0017\u0010\u009c\u0001\u001a\u0002082\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0EH\u0007J\u0017\u0010\u009e\u0001\u001a\u00020\u007f2\u0006\u0010A\u001a\u00020BH\u0001\u00a2\u0006\u0003\u0008\u009f\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010)\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008*\u0010\u0002R\u000e\u0010+\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0018\u00102\u001a\u0004\u0018\u00010\u00048BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00101R\u0016\u00104\u001a\n 6*\u0004\u0018\u00010505X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a0\u0001"
    }
    d2 = {
        "Lcom/facebook/GraphRequest$Companion;",
        "",
        "()V",
        "ACCEPT_LANGUAGE_HEADER",
        "",
        "ACCESS_TOKEN_PARAM",
        "ATTACHED_FILES_PARAM",
        "ATTACHMENT_FILENAME_PREFIX",
        "BATCH_APP_ID_PARAM",
        "BATCH_BODY_PARAM",
        "BATCH_ENTRY_DEPENDS_ON_PARAM",
        "BATCH_ENTRY_NAME_PARAM",
        "BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM",
        "BATCH_METHOD_PARAM",
        "BATCH_PARAM",
        "BATCH_RELATIVE_URL_PARAM",
        "CAPTION_PARAM",
        "CONTENT_ENCODING_HEADER",
        "CONTENT_TYPE_HEADER",
        "DEBUG_KEY",
        "DEBUG_MESSAGES_KEY",
        "DEBUG_MESSAGE_KEY",
        "DEBUG_MESSAGE_LINK_KEY",
        "DEBUG_MESSAGE_TYPE_KEY",
        "DEBUG_PARAM",
        "DEBUG_SEVERITY_INFO",
        "DEBUG_SEVERITY_WARNING",
        "FIELDS_PARAM",
        "FORMAT_JSON",
        "FORMAT_PARAM",
        "ISO_8601_FORMAT_STRING",
        "MAXIMUM_BATCH_SIZE",
        "",
        "ME",
        "MIME_BOUNDARY",
        "MY_FRIENDS",
        "MY_PHOTOS",
        "PICTURE_PARAM",
        "SDK_ANDROID",
        "SDK_PARAM",
        "SEARCH",
        "TAG",
        "getTAG$facebook_core_release$annotations",
        "USER_AGENT_BASE",
        "USER_AGENT_HEADER",
        "VIDEOS_SUFFIX",
        "defaultBatchApplicationId",
        "mimeContentType",
        "getMimeContentType",
        "()Ljava/lang/String;",
        "userAgent",
        "getUserAgent",
        "versionPattern",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "createConnection",
        "Ljava/net/HttpURLConnection;",
        "url",
        "Ljava/net/URL;",
        "executeAndWait",
        "Lcom/facebook/GraphResponse;",
        "request",
        "Lcom/facebook/GraphRequest;",
        "executeBatchAndWait",
        "",
        "requests",
        "Lcom/facebook/GraphRequestBatch;",
        "",
        "([Lcom/facebook/GraphRequest;)Ljava/util/List;",
        "",
        "executeBatchAsync",
        "Lcom/facebook/GraphRequestAsyncTask;",
        "([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;",
        "executeConnectionAndWait",
        "connection",
        "executeConnectionAsync",
        "callbackHandler",
        "Landroid/os/Handler;",
        "getBatchAppId",
        "batch",
        "getDefaultBatchApplicationId",
        "getDefaultPhotoPathIfNull",
        "graphPath",
        "hasOnProgressCallbacks",
        "",
        "isGzipCompressible",
        "isMeRequest",
        "path",
        "isSupportedAttachmentType",
        "value",
        "isSupportedParameterType",
        "newCustomAudienceThirdPartyIdRequest",
        "accessToken",
        "Lcom/facebook/AccessToken;",
        "context",
        "Landroid/content/Context;",
        "callback",
        "Lcom/facebook/GraphRequest$Callback;",
        "applicationId",
        "newDeleteObjectRequest",
        "id",
        "newGraphPathRequest",
        "newMeRequest",
        "Lcom/facebook/GraphRequest$GraphJSONObjectCallback;",
        "newMyFriendsRequest",
        "Lcom/facebook/GraphRequest$GraphJSONArrayCallback;",
        "newPlacesSearchRequest",
        "location",
        "Landroid/location/Location;",
        "radiusInMeters",
        "resultsLimit",
        "searchText",
        "newPostRequest",
        "graphObject",
        "Lorg/json/JSONObject;",
        "newUploadPhotoRequest",
        "image",
        "Landroid/graphics/Bitmap;",
        "caption",
        "params",
        "Landroid/os/Bundle;",
        "photoUri",
        "Landroid/net/Uri;",
        "file",
        "Ljava/io/File;",
        "parameterToString",
        "processGraphObject",
        "",
        "serializer",
        "Lcom/facebook/GraphRequest$KeyValueSerializer;",
        "processGraphObjectProperty",
        "key",
        "passByValue",
        "processRequest",
        "logger",
        "Lcom/facebook/internal/Logger;",
        "numRequests",
        "outputStream",
        "Ljava/io/OutputStream;",
        "shouldUseGzip",
        "runCallbacks",
        "responses",
        "runCallbacks$facebook_core_release",
        "serializeAttachments",
        "attachments",
        "",
        "Lcom/facebook/GraphRequest$Attachment;",
        "Lcom/facebook/GraphRequest$Serializer;",
        "serializeParameters",
        "bundle",
        "serializeRequestsAsJSON",
        "",
        "serializeToUrlConnection",
        "serializeToUrlConnection$facebook_core_release",
        "setConnectionContentType",
        "setDefaultBatchApplicationId",
        "toHttpConnection",
        "([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;",
        "validateFieldsParamForGetRequests",
        "validateFieldsParamForGetRequests$facebook_core_release",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/facebook/GraphRequest$c;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_0
    instance-of p0, p1, Ljava/lang/Boolean;

    if-nez p0, :cond_3

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of p0, p1, Ljava/util/Date;

    if-eqz p0, :cond_2

    .line 5
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p0, "iso8601DateFormat.format(value)"

    invoke-static {p1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported parameter type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final b(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 2
    sget-object v0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "FBAndroidSDK"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const-string v4, "13.0.0"

    aput-object v4, v2, v3

    const-string v4, "%s.%s"

    const-string v5, "java.lang.String.format(format, *args)"

    .line 3
    invoke-static {v2, v0, v4, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    sput-object v2, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v0, [Ljava/lang/Object;

    .line 7
    sget-object v6, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v2, v5, v3

    .line 8
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s/%s"

    invoke-static {v4, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    .line 10
    :cond_0
    sget-object v0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    const-string v2, "User-Agent"

    .line 11
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Accept-Language"

    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p1
.end method

.method public final c(Le/j/k0;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/j/k0;",
            ")",
            "Ljava/util/List<",
            "Le/j/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/internal/r0;->a:Lcom/facebook/internal/r0;

    invoke-static {p1, v0}, Lcom/facebook/internal/r0;->c(Ljava/util/Collection;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$c;->p(Le/j/k0;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/facebook/GraphRequest$c;->e(Ljava/net/HttpURLConnection;Le/j/k0;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 4
    :cond_0
    iget-object v3, p1, Le/j/k0;->c:Ljava/util/List;

    .line 5
    new-instance v4, Le/j/c0;

    invoke-direct {v4, v2}, Le/j/c0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v0, v4}, Le/j/l0;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Le/j/c0;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$c;->m(Le/j/k0;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v0

    .line 7
    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/q0;->k(Ljava/net/URLConnection;)V

    return-object p1

    :goto_2
    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lcom/facebook/internal/q0;->k(Ljava/net/URLConnection;)V

    throw p1
.end method

.method public final d(Le/j/k0;)Le/j/j0;
    .locals 2

    const-string v0, "requests"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/internal/r0;->a:Lcom/facebook/internal/r0;

    invoke-static {p1, v0}, Lcom/facebook/internal/r0;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/j/j0;

    invoke-direct {v0, p1}, Le/j/j0;-><init>(Le/j/k0;)V

    .line 3
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public final e(Ljava/net/HttpURLConnection;Le/j/k0;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Le/j/k0;",
            ")",
            "Ljava/util/List<",
            "Le/j/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requests"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Response <Error>: %s"

    const-string v3, "Response"

    .line 1
    sget-object v4, Le/j/n0;->a:Le/j/n0;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2
    :try_start_0
    sget-object v6, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->i()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x190

    if-lt v6, v7, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Le/j/c0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    :try_start_1
    invoke-static {v6, p1, p2}, Le/j/l0;->c(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Le/j/k0;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Le/j/c0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    :cond_1
    :try_start_2
    const-string v6, "GraphRequest can\'t be used when Facebook SDK isn\'t fully initialized"

    .line 7
    sget-object v7, Le/j/l0;->g:Ljava/lang/String;

    .line 8
    new-instance v7, Le/j/c0;

    invoke-direct {v7, v6}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Le/j/c0; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_2
    move-exception v6

    move-object v7, v6

    move-object v6, v0

    .line 9
    :goto_1
    :try_start_3
    sget-object v8, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v5

    invoke-virtual {v8, v4, v3, v2, v9}, Lcom/facebook/internal/k0$a;->c(Le/j/n0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    new-instance v2, Le/j/c0;

    invoke-direct {v2, v7}, Le/j/c0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p2, p1, v2}, Le/j/l0;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Le/j/c0;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :catch_3
    move-exception v6

    move-object v7, v6

    move-object v6, v0

    .line 11
    :goto_2
    sget-object v8, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v5

    invoke-virtual {v8, v4, v3, v2, v9}, Lcom/facebook/internal/k0$a;->c(Le/j/n0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {p2, p1, v7}, Le/j/l0;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Le/j/c0;)Ljava/util/List;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :goto_3
    invoke-static {v6}, Lcom/facebook/internal/q0;->e(Ljava/io/Closeable;)V

    .line 14
    invoke-static {p1}, Lcom/facebook/internal/q0;->k(Ljava/net/URLConnection;)V

    .line 15
    invoke-virtual {p2}, Le/j/k0;->size()I

    move-result p1

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_6

    .line 17
    invoke-virtual {p0, p2, v2}, Lcom/facebook/GraphRequest$c;->m(Le/j/k0;Ljava/util/List;)V

    .line 18
    sget-object p1, Le/j/v;->f:Le/j/v$a;

    invoke-virtual {p1}, Le/j/v$a;->a()Le/j/v;

    move-result-object p1

    .line 19
    iget-object p2, p1, Le/j/v;->c:Lcom/facebook/AccessToken;

    if-nez p2, :cond_2

    goto :goto_4

    .line 20
    :cond_2
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v3

    .line 21
    iget-object v6, p2, Lcom/facebook/AccessToken;->f:Le/j/w;

    .line 22
    iget-boolean v6, v6, Le/j/w;->a:Z

    if-eqz v6, :cond_3

    .line 23
    iget-object v6, p1, Le/j/v;->e:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v3, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 24
    iget-object p2, p2, Lcom/facebook/AccessToken;->g:Ljava/util/Date;

    .line 25
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v3, v6

    const-wide/32 v6, 0x5265c00

    cmp-long p2, v3, v6

    if-lez p2, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    move v1, v5

    :goto_5
    if-nez v1, :cond_4

    goto :goto_6

    .line 26
    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 27
    invoke-virtual {p1, v0}, Le/j/v;->a(Lcom/facebook/AccessToken$a;)V

    goto :goto_6

    .line 28
    :cond_5
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    new-instance v1, Le/j/a;

    invoke-direct {v1, p1, v0}, Le/j/a;-><init>(Le/j/v;Lcom/facebook/AccessToken$a;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    return-object v2

    .line 30
    :cond_6
    new-instance p2, Le/j/c0;

    .line 31
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    .line 32
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Received %d responses while expecting %d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p2, p1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p1

    move-object v0, v6

    .line 34
    :goto_7
    invoke-static {v0}, Lcom/facebook/internal/q0;->e(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p1, [B

    if-nez v0, :cond_1

    .line 3
    instance-of v0, p1, Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 4
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 5
    instance-of p1, p1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final h(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 9

    .line 1
    new-instance v8, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;Ljava/lang/String;I)V

    return-object v8
.end method

.method public final i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 9

    .line 1
    new-instance v8, Lcom/facebook/GraphRequest;

    sget-object v4, Le/j/m0;->b:Le/j/m0;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;Ljava/lang/String;I)V

    .line 2
    iput-object p3, v8, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    return-object v8
.end method

.method public final j(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/facebook/GraphRequest;->n:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "matcher.group(1)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const/4 v1, 0x2

    const-string v3, "me/"

    const/4 v4, 0x0

    .line 5
    invoke-static {v0, v3, v4, v1}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/me/"

    invoke-static {v0, v3, v4, v1}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, ":"

    const/4 v1, 0x6

    .line 6
    invoke-static {p2, v0, v4, v4, v1}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const-string v3, "?"

    .line 7
    invoke-static {p2, v3, v4, v4, v1}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    if-ge v0, p2, :cond_4

    :cond_3
    move p2, v2

    goto :goto_3

    :cond_4
    move p2, v4

    .line 8
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p2, :cond_5

    const-string v5, "image"

    .line 12
    invoke-static {v1, v5, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_5

    :cond_5
    move v5, v4

    :goto_5
    const-string v6, "key"

    .line 13
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3, p3, v5}, Lcom/facebook/GraphRequest$c;->k(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 3
    check-cast p2, Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v1, v5, v2

    const-string v6, "%s[%s]"

    const-string v7, "java.lang.String.format(format, *args)"

    .line 7
    invoke-static {v5, v3, v6, v7}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "jsonObject.opt(propertyName)"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v5, v1, p3, p4}, Lcom/facebook/GraphRequest$c;->k(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "id"

    .line 10
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObject.optString(\"id\")"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$c;->k(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    goto/16 :goto_3

    :cond_1
    const-string v0, "url"

    .line 12
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObject.optString(\"url\")"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$c;->k(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    goto/16 :goto_3

    :cond_2
    const-string v0, "fbsdk:create_object"

    .line 14
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "jsonObject.toString()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$c;->k(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    goto/16 :goto_3

    :cond_3
    const-class v1, Lorg/json/JSONArray;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    check-cast p2, Lorg/json/JSONArray;

    .line 18
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    move v1, v4

    :goto_1
    add-int/lit8 v5, v1, 0x1

    .line 19
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s[%d]"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(locale, format, *args)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "jsonArray.opt(i)"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v6, v1, p3, p4}, Lcom/facebook/GraphRequest$c;->k(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 21
    :cond_5
    const-class p4, Ljava/lang/String;

    .line 22
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_7

    const-class p4, Ljava/lang/Number;

    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_7

    sget-object p4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 24
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    const-class p4, Ljava/util/Date;

    .line 26
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 27
    check-cast p2, Ljava/util/Date;

    .line 28
    new-instance p4, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {p4, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "iso8601DateFormat.format(date)"

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 30
    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final l(Le/j/k0;Lcom/facebook/internal/k0;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Lcom/facebook/GraphRequest$g;

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v3, v4, v2, v5}, Lcom/facebook/GraphRequest$g;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/k0;Z)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "  Attachments:\n"

    const-string v7, "key"

    move/from16 v8, p3

    if-ne v8, v4, :cond_6

    .line 2
    invoke-virtual {v1, v5}, Le/j/k0;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v5, v1, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 5
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6
    iget-object v9, v1, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 7
    invoke-virtual {v9, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 8
    invoke-virtual {v0, v9}, Lcom/facebook/GraphRequest$c;->f(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 9
    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/facebook/GraphRequest$a;

    invoke-direct {v10, v1, v9}, Lcom/facebook/GraphRequest$a;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-virtual {v4, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "  Parameters:\n"

    .line 10
    invoke-virtual {v2, v5}, Lcom/facebook/internal/k0;->a(Ljava/lang/String;)V

    .line 11
    :goto_1
    iget-object v5, v1, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 13
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 15
    invoke-virtual {v0, v10}, Lcom/facebook/GraphRequest$c;->g(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 16
    invoke-static {v9, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10, v1}, Lcom/facebook/GraphRequest$g;->g(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {v2, v6}, Lcom/facebook/internal/k0;->a(Ljava/lang/String;)V

    .line 18
    :goto_3
    invoke-virtual {v0, v4, v3}, Lcom/facebook/GraphRequest$c;->n(Ljava/util/Map;Lcom/facebook/GraphRequest$g;)V

    .line 19
    iget-object v1, v1, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    if-eqz v1, :cond_17

    .line 20
    invoke-virtual/range {p4 .. p4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "url.path"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/GraphRequest$c;->j(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)V

    goto/16 :goto_f

    .line 21
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/GraphRequest;

    .line 22
    iget-object v9, v9, Lcom/facebook/GraphRequest;->a:Lcom/facebook/AccessToken;

    if-eqz v9, :cond_7

    .line 23
    iget-object v8, v9, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    goto :goto_4

    .line 24
    :cond_8
    sget-object v8, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    .line 25
    sget-object v8, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v8

    .line 26
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_9

    move v9, v4

    goto :goto_5

    :cond_9
    move v9, v5

    :goto_5
    if-nez v9, :cond_18

    const-string v9, "batch_app_id"

    .line 27
    invoke-virtual {v3, v9, v8}, Lcom/facebook/GraphRequest$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 29
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/GraphRequest;

    .line 31
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 33
    sget-object v13, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    invoke-static {}, Lcom/facebook/internal/o0;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/facebook/GraphRequest;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 34
    invoke-virtual {v11}, Lcom/facebook/GraphRequest;->a()V

    .line 35
    invoke-virtual {v11, v13, v4}, Lcom/facebook/GraphRequest;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 36
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    invoke-virtual {v13}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v4

    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s?%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "relative_url"

    .line 38
    invoke-virtual {v12, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v5, v11, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    const-string v13, "method"

    invoke-virtual {v12, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object v5, v11, Lcom/facebook/GraphRequest;->a:Lcom/facebook/AccessToken;

    if-eqz v5, :cond_a

    .line 41
    iget-object v5, v5, Lcom/facebook/AccessToken;->e:Ljava/lang/String;

    .line 42
    sget-object v13, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    invoke-virtual {v13, v5}, Lcom/facebook/internal/k0$a;->d(Ljava/lang/String;)V

    .line 43
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v13, v11, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 45
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 46
    iget-object v15, v11, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    invoke-virtual {v15, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 47
    instance-of v15, v14, Landroid/graphics/Bitmap;

    if-nez v15, :cond_c

    .line 48
    instance-of v15, v14, [B

    if-nez v15, :cond_c

    .line 49
    instance-of v15, v14, Landroid/net/Uri;

    if-nez v15, :cond_c

    .line 50
    instance-of v15, v14, Landroid/os/ParcelFileDescriptor;

    if-nez v15, :cond_c

    .line 51
    instance-of v15, v14, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v15, :cond_b

    goto :goto_8

    :cond_b
    const/4 v15, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v15, 0x1

    :goto_9
    if-eqz v15, :cond_d

    .line 52
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 p3, v10

    const/4 v10, 0x2

    move-object/from16 p4, v13

    new-array v13, v10, [Ljava/lang/Object;

    const-string v16, "file"

    const/16 v17, 0x0

    aput-object v16, v13, v17

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v13, v17

    invoke-static {v13, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const-string v13, "%s%d"

    invoke-static {v15, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "java.lang.String.format(locale, format, *args)"

    invoke-static {v10, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v13, Lcom/facebook/GraphRequest$a;

    invoke-direct {v13, v11, v14}, Lcom/facebook/GraphRequest$a;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-virtual {v8, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_d
    move-object/from16 p3, v10

    move-object/from16 p4, v13

    :goto_a
    move-object/from16 v10, p3

    move-object/from16 v13, p4

    goto :goto_7

    :cond_e
    move-object/from16 p3, v10

    .line 55
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, ","

    .line 56
    invoke-static {v10, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "attached_files"

    .line 57
    invoke-virtual {v12, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_f
    iget-object v5, v11, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    if-eqz v5, :cond_10

    .line 59
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sget-object v11, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    .line 61
    new-instance v13, Le/j/i0;

    invoke-direct {v13, v10}, Le/j/i0;-><init>(Ljava/util/ArrayList;)V

    .line 62
    invoke-virtual {v11, v5, v4, v13}, Lcom/facebook/GraphRequest$c;->j(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)V

    const-string v4, "&"

    .line 63
    invoke-static {v4, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "body"

    .line 64
    invoke-virtual {v12, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_10
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v10, p3

    goto/16 :goto_6

    :cond_11
    const-string v4, "batch"

    .line 66
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestJsonArray"

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requests"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v5, v3, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    instance-of v7, v5, Le/j/t0;

    const-string v10, "requestJsonArray.toString()"

    if-nez v7, :cond_12

    .line 68
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Lcom/facebook/GraphRequest$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 69
    :cond_12
    check-cast v5, Le/j/t0;

    const/4 v7, 0x0

    .line 70
    invoke-virtual {v3, v4, v7, v7}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v11, "["

    .line 71
    invoke-virtual {v3, v11, v7}, Lcom/facebook/GraphRequest$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/GraphRequest;

    .line 73
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 74
    invoke-interface {v5, v12}, Le/j/t0;->b(Lcom/facebook/GraphRequest;)V

    if-lez v7, :cond_13

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 75
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    const-string v12, ",%s"

    invoke-virtual {v3, v12, v7}, Lcom/facebook/GraphRequest$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_13
    const/4 v7, 0x1

    const/4 v12, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    const-string v12, "%s"

    invoke-virtual {v3, v12, v7}, Lcom/facebook/GraphRequest$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    move v7, v11

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "]"

    .line 77
    invoke-virtual {v3, v5, v1}, Lcom/facebook/GraphRequest$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v1, v3, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/k0;

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    const-string v5, "    "

    invoke-static {v5, v4}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/facebook/internal/k0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_d
    if-nez v2, :cond_16

    goto :goto_e

    .line 79
    :cond_16
    invoke-virtual {v2, v6}, Lcom/facebook/internal/k0;->a(Ljava/lang/String;)V

    .line 80
    :goto_e
    invoke-virtual {v0, v8, v3}, Lcom/facebook/GraphRequest$c;->n(Ljava/util/Map;Lcom/facebook/GraphRequest$g;)V

    :cond_17
    :goto_f
    return-void

    .line 81
    :cond_18
    new-instance v1, Le/j/c0;

    const-string v2, "App ID was not specified at the request or Settings."

    invoke-direct {v1, v2}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final m(Le/j/k0;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/j/k0;",
            "Ljava/util/List<",
            "Le/j/l0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responses"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Le/j/k0;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Le/j/k0;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 4
    iget-object v5, v4, Lcom/facebook/GraphRequest;->h:Lcom/facebook/GraphRequest$b;

    if-eqz v5, :cond_0

    .line 5
    new-instance v5, Landroid/util/Pair;

    .line 6
    iget-object v4, v4, Lcom/facebook/GraphRequest;->h:Lcom/facebook/GraphRequest$b;

    .line 7
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 9
    new-instance p2, Le/j/o;

    invoke-direct {p2, v1, p1}, Le/j/o;-><init>(Ljava/util/ArrayList;Le/j/k0;)V

    .line 10
    iget-object p1, p1, Le/j/k0;->a:Landroid/os/Handler;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    .line 12
    invoke-virtual {p2}, Le/j/o;->run()V

    :cond_4
    return-void
.end method

.method public final n(Ljava/util/Map;Lcom/facebook/GraphRequest$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;",
            "Lcom/facebook/GraphRequest$g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    sget-object v1, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest$a;

    .line 3
    iget-object v2, v2, Lcom/facebook/GraphRequest$a;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest$c;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest$a;

    .line 6
    iget-object v2, v2, Lcom/facebook/GraphRequest$a;->b:Ljava/lang/Object;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest$a;

    .line 8
    iget-object v0, v0, Lcom/facebook/GraphRequest$a;->a:Lcom/facebook/GraphRequest;

    .line 9
    invoke-virtual {p2, v1, v2, v0}, Lcom/facebook/GraphRequest$g;->g(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Le/j/k0;Ljava/net/HttpURLConnection;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Le/j/m0;->b:Le/j/m0;

    const-string v3, "requests"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "connection"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v8, Lcom/facebook/internal/k0;

    sget-object v3, Le/j/n0;->a:Le/j/n0;

    const-string v4, "Request"

    invoke-direct {v8, v3, v4}, Lcom/facebook/internal/k0;-><init>(Le/j/n0;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/j/k0;->size()I

    move-result v9

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    .line 4
    iget-object v7, v4, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 5
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 6
    iget-object v11, v4, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 7
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v11, p0

    .line 8
    invoke-virtual {v11, v10}, Lcom/facebook/GraphRequest$c;->f(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v6

    goto :goto_1

    :cond_1
    move-object/from16 v11, p0

    goto :goto_0

    :cond_2
    move-object/from16 v11, p0

    move v10, v5

    :goto_1
    const/4 v3, 0x0

    if-ne v9, v5, :cond_3

    .line 9
    invoke-virtual {v0, v6}, Le/j/k0;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 10
    iget-object v4, v4, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_4

    move-object v4, v2

    .line 11
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-Type"

    if-eqz v10, :cond_5

    const-string v12, "application/x-www-form-urlencoded"

    .line 12
    invoke-virtual {v1, v7, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Content-Encoding"

    const-string v13, "gzip"

    .line 13
    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-array v12, v5, [Ljava/lang/Object;

    .line 14
    sget-object v13, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    aput-object v13, v12, v6

    .line 15
    invoke-static {v12, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    const-string v13, "multipart/form-data; boundary=%s"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "java.lang.String.format(format, *args)"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v7, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v12

    const-string v13, "Request:\n"

    .line 18
    invoke-virtual {v8, v13}, Lcom/facebook/internal/k0;->a(Ljava/lang/String;)V

    .line 19
    iget-object v13, v0, Le/j/k0;->b:Ljava/lang/String;

    const-string v14, "Id"

    .line 20
    invoke-virtual {v8, v14, v13}, Lcom/facebook/internal/k0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v13, "url"

    .line 21
    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "URL"

    invoke-virtual {v8, v13, v12}, Lcom/facebook/internal/k0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "connection.requestMethod"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "Method"

    invoke-virtual {v8, v14, v13}, Lcom/facebook/internal/k0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v13, "User-Agent"

    .line 23
    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "connection.getRequestProperty(\"User-Agent\")"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v13, v14}, Lcom/facebook/internal/k0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "connection.getRequestProperty(\"Content-Type\")"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v13}, Lcom/facebook/internal/k0;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 26
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-ne v4, v2, :cond_6

    move v2, v5

    goto :goto_4

    :cond_6
    move v2, v6

    :goto_4
    if-nez v2, :cond_7

    .line 27
    invoke-virtual {v8}, Lcom/facebook/internal/k0;->c()V

    return-void

    .line 28
    :cond_7
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 29
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v10, :cond_8

    .line 30
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto/16 :goto_7

    :cond_8
    move-object v13, v2

    .line 31
    :goto_5
    :try_start_2
    iget-object v1, v0, Le/j/k0;->d:Ljava/util/List;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/j/k0$a;

    .line 33
    instance-of v2, v2, Le/j/k0$b;

    if-eqz v2, :cond_9

    goto :goto_6

    .line 34
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 35
    iget-object v2, v2, Lcom/facebook/GraphRequest;->h:Lcom/facebook/GraphRequest$b;

    .line 36
    instance-of v2, v2, Lcom/facebook/GraphRequest$f;

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_c
    move v5, v6

    :goto_6
    if-eqz v5, :cond_d

    .line 37
    new-instance v14, Le/j/r0;

    .line 38
    iget-object v1, v0, Le/j/k0;->a:Landroid/os/Handler;

    .line 39
    invoke-direct {v14, v1}, Le/j/r0;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v9

    move-object v5, v12

    move-object v6, v14

    move v7, v10

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/GraphRequest$c;->l(Le/j/k0;Lcom/facebook/internal/k0;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 41
    iget v1, v14, Le/j/r0;->e:I

    .line 42
    iget-object v4, v14, Le/j/r0;->b:Ljava/util/Map;

    .line 43
    new-instance v7, Le/j/s0;

    int-to-long v5, v1

    move-object v1, v7

    move-object v2, v13

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Le/j/s0;-><init>(Ljava/io/OutputStream;Le/j/k0;Ljava/util/Map;J)V

    move-object v13, v7

    :cond_d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move v4, v9

    move-object v5, v12

    move-object v6, v13

    move v7, v10

    .line 44
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/GraphRequest$c;->l(Le/j/k0;Lcom/facebook/internal/k0;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 46
    invoke-virtual {v8}, Lcom/facebook/internal/k0;->c()V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v13

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_7
    if-nez v3, :cond_e

    goto :goto_8

    .line 47
    :cond_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :goto_8
    throw v0
.end method

.method public final p(Le/j/k0;)Ljava/net/HttpURLConnection;
    .locals 8

    const-string v0, "could not construct request body"

    const-string v1, "requests"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 3
    sget-object v3, Le/j/m0;->a:Le/j/m0;

    .line 4
    iget-object v4, v2, Lcom/facebook/GraphRequest;->i:Le/j/m0;

    if-ne v3, v4, :cond_0

    .line 5
    iget-object v3, v2, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    const-string v4, "fields"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    sget-object v3, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    .line 8
    sget-object v4, Le/j/n0;->f:Le/j/n0;

    const/4 v5, 0x5

    const-string v6, "GET requests for /"

    .line 9
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 10
    iget-object v2, v2, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    const-string v7, " should contain an explicit \"fields\" parameter."

    .line 11
    invoke-static {v6, v2, v7}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Request"

    .line 12
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/facebook/internal/k0$a;->a(Le/j/n0;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Le/j/k0;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Le/j/k0;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    new-instance v2, Ljava/net/URL;

    sget-object v1, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    invoke-static {}, Lcom/facebook/internal/o0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    const/4 v1, 0x0

    .line 17
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/facebook/GraphRequest$c;->b(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/facebook/GraphRequest$c;->o(Le/j/k0;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 19
    invoke-static {v1}, Lcom/facebook/internal/q0;->k(Ljava/net/URLConnection;)V

    .line 20
    new-instance v1, Le/j/c0;

    invoke-direct {v1, v0, p1}, Le/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 21
    invoke-static {v1}, Lcom/facebook/internal/q0;->k(Ljava/net/URLConnection;)V

    .line 22
    new-instance v1, Le/j/c0;

    invoke-direct {v1, v0, p1}, Le/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 23
    new-instance v0, Le/j/c0;

    const-string v1, "could not construct URL for request"

    invoke-direct {v0, v1, p1}, Le/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
