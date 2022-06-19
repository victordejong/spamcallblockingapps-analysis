.class public final Le/a/k/c/r$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r;-><init>(Ls1/w/f;Landroid/content/Context;Le/a/k/c/s1;Le/a/k/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/a/c/p1/h0/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/c/r;


# direct methods
.method public constructor <init>(Le/a/k/c/r;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$b;->b:Le/a/k/c/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/m/a/c/p1/r;

    iget-object v1, p0, Le/a/k/c/r$b;->b:Le/a/k/c/r;

    .line 2
    iget-object v1, v1, Le/a/k/c/r;->f:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "truecaller"

    .line 3
    invoke-direct {v0, v1, v3, v2}, Le/m/a/c/p1/r;-><init>(Landroid/content/Context;Ljava/lang/String;Le/m/a/c/p1/f0;)V

    .line 4
    new-instance v1, Le/m/a/c/p1/h0/g;

    iget-object v2, p0, Le/a/k/c/r$b;->b:Le/a/k/c/r;

    invoke-static {v2}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Le/m/a/c/p1/h0/g;-><init>(Le/m/a/c/p1/h0/c;Le/m/a/c/p1/l$a;)V

    return-object v1
.end method
