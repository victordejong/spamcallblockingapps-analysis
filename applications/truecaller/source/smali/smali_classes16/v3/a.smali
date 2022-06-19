.class public final Lv3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lv3/i;->e:Lv3/i$a;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lv3/i$a;->c(Ljava/lang/String;)Lv3/i;

    move-result-object v1

    invoke-virtual {v1}, Lv3/i;->e()[B

    move-result-object v1

    sput-object v1, Lv3/a;->a:[B

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 2
    invoke-virtual {v0, v1}, Lv3/i$a;->c(Ljava/lang/String;)Lv3/i;

    return-void
.end method
