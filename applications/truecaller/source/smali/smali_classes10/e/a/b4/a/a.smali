.class public final Le/a/b4/a/a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/b4/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b4/a/a;

    invoke-direct {v0}, Le/a/b4/a/a;-><init>()V

    sput-object v0, Le/a/b4/a/a;->b:Le/a/b4/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Le/a/b4/a/c;->h:Le/a/b4/a/c$a;

    .line 2
    sget-object v0, Le/a/b4/a/c;->f:Ls1/z/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "isApplicationLocaleRtl"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
