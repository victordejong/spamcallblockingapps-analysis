.class public final Le/a/f4/b/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lp3/a/o0;->c:Lp3/a/o0$d;

    const-string v1, "Authorization"

    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v0

    sput-object v0, Le/a/f4/b/h/b;->a:Lp3/a/o0$f;

    return-void
.end method
