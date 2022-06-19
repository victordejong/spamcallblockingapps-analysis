.class public Le/a/w/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "code"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "deepLink"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v2, Lw3/c/a/a/a/j/c;->w:Lw3/c/a/a/a/j/c;

    .line 2
    new-instance v7, Lw3/c/a/a/a/j/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lw3/c/a/a/a/j/b;-><init>(Ljava/lang/Object;Lw3/c/a/a/a/j/c;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    invoke-virtual {v7}, Lw3/c/a/a/a/j/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
