.class public interface abstract Lcom/hiya/stingray/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_CALL_LOG"

    const-string v2, "android.permission.CALL_PHONE"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/hiya/stingray/util/n;->a:[Ljava/lang/String;

    const-string v3, "android.permission.ANSWER_PHONE_CALLS"

    .line 2
    filled-new-array {v0, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hiya/stingray/util/n;->b:[Ljava/lang/String;

    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.RECEIVE_SMS"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hiya/stingray/util/n;->c:[Ljava/lang/String;

    const-string v2, "android.permission.SEND_SMS"

    .line 4
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hiya/stingray/util/n;->d:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    const-string v0, "android.permission.READ_CONTACTS"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    return-void
.end method
