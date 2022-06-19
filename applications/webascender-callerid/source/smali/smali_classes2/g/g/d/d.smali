.class public final Lg/g/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/d/c;


# instance fields
.field private final f:Li/a/b/p;


# direct methods
.method public constructor <init>(Li/a/b/p;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/d/d;->f:Li/a/b/p;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/d;->f:Li/a/b/p;

    invoke-interface {v0}, Li/a/b/p;->close()V

    return-void
.end method
