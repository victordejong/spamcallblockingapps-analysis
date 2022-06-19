.class public final Le/a/k0/n/e/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/n/e/h;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k0/n/e/h;


# direct methods
.method public constructor <init>(Le/a/k0/n/e/h;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/e/h$a;->b:Le/a/k0/n/e/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/h$a;->b:Le/a/k0/n/e/h;

    .line 2
    iget-object v0, v0, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Le/a/k0/n/e/c$c;->a:Le/a/k0/n/e/c$c;

    invoke-interface {v0, v1}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    .line 4
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
