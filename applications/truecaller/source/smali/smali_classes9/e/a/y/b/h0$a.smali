.class public final Le/a/y/b/h0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/b/h0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/z3/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/y/b/h0;


# direct methods
.method public constructor <init>(Le/a/y/b/h0;)V
    .locals 0

    iput-object p1, p0, Le/a/y/b/h0$a;->b:Le/a/y/b/h0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/b/h0$a;->b:Le/a/y/b/h0;

    .line 2
    iget-object v0, v0, Le/a/y/b/h0;->b:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    const-string v1, "GlideApp.with(context)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
