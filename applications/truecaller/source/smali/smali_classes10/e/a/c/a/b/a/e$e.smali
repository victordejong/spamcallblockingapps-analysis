.class public final Le/a/c/a/b/a/e$e;
.super Le/a/c/a/b/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final b:Le/a/c/a/b/a/e$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/a/b/a/e$e;

    invoke-direct {v0}, Le/a/c/a/b/a/e$e;-><init>()V

    sput-object v0, Le/a/c/a/b/a/e$e;->b:Le/a/c/a/b/a/e$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/c/a/b/a/d;

    .line 1
    new-instance v1, Le/a/c/a/b/a/d;

    sget v2, Lcom/truecaller/insights/ui/R$string;->message_type_not_otp:I

    sget v3, Lcom/truecaller/insights/ui/R$drawable;->ic_message_type_not_pin:I

    invoke-direct {v1, v2, v3}, Le/a/c/a/b/a/d;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Le/a/c/a/b/a/d;

    sget v2, Lcom/truecaller/insights/ui/R$string;->message_type_wrong_info:I

    sget v3, Lcom/truecaller/insights/ui/R$drawable;->ic_message_type_wrong_card:I

    invoke-direct {v1, v2, v3}, Le/a/c/a/b/a/d;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Le/a/c/a/b/a/d;

    sget v2, Lcom/truecaller/insights/ui/R$string;->message_type_otp_wrong:I

    sget v3, Lcom/truecaller/insights/ui/R$drawable;->ic_message_type_wrong_pin:I

    invoke-direct {v1, v2, v3}, Le/a/c/a/b/a/d;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Le/a/c/a/b/a/d;

    sget v2, Lcom/truecaller/insights/ui/R$string;->message_type_any_other:I

    sget v3, Lcom/truecaller/insights/ui/R$drawable;->ic_message_type_other:I

    invoke-direct {v1, v2, v3}, Le/a/c/a/b/a/d;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Le/a/c/a/b/a/e;-><init>(Ljava/util/List;Ls1/z/c/f;)V

    return-void
.end method
