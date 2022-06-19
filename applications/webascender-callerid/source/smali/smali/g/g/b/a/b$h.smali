.class final synthetic Lg/g/b/a/b$h;
.super Lkotlin/w/c/i;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/b;->G(Ljava/lang/String;ZZZLjava/lang/Boolean;Lg/g/b/a/g/b/a;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/i;",
        "Lkotlin/w/b/a<",
        "Li/c/b0/b/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/g/b/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/w/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "deleteNonSpamOrNonFraudCallerIds"

    return-object v0
.end method

.method public final e()Lkotlin/a0/c;
    .locals 1

    const-class v0, Lg/g/b/a/b;

    invoke-static {v0}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "deleteNonSpamOrNonFraudCallerIds$callerid_release()Lio/reactivex/rxjava3/core/Completable;"

    return-object v0
.end method

.method public final g()Li/c/b0/b/e;
    .locals 1

    iget-object v0, p0, Lkotlin/w/c/c;->g:Ljava/lang/Object;

    check-cast v0, Lg/g/b/a/b;

    .line 1
    invoke-virtual {v0}, Lg/g/b/a/b;->f()Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/b$h;->g()Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method
