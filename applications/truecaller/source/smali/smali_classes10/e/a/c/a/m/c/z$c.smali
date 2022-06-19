.class public final Le/a/c/a/m/c/z$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/z;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/a/m/b/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/m/c/z;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/z;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/z$c;->b:Le/a/c/a/m/c/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/m/c/z$c;->b:Le/a/c/a/m/c/z;

    .line 2
    iget-object v0, v0, Le/a/c/a/m/c/z;->a:Le/a/c/a/m/b/o$a;

    if-eqz v0, :cond_0

    .line 3
    const-class v1, Le/a/c/a/m/b/o;

    invoke-virtual {v0, v1}, Le/a/c/a/m/b/o$a;->create(Ljava/lang/Class;)Ln3/v/y0;

    move-result-object v0

    check-cast v0, Le/a/c/a/m/b/o;

    return-object v0

    :cond_0
    const-string v0, "viewmodelFactory"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
