.class public final Lg/g/b/d/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/b/d/d/a;


# direct methods
.method public constructor <init>(Lg/g/b/d/d/a;)V
    .locals 1

    const-string v0, "requestDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/d/g/c;->a:Lg/g/b/d/d/a;

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/d/e/a;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "storedRequest"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/c;->a:Lg/g/b/d/d/a;

    invoke-virtual {v0, p1}, Lg/g/b/d/d/a;->f(Lg/g/b/d/e/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
