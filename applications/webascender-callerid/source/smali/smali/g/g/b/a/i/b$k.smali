.class final Lg/g/b/a/i/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->c()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$k;->f:Lg/g/b/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Li/c/b0/b/e;
    .locals 0

    .line 1
    iget-object p1, p0, Lg/g/b/a/i/b$k;->f:Lg/g/b/a/i/b;

    invoke-static {p1}, Lg/g/b/a/i/b;->d(Lg/g/b/a/i/b;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/g/b/a/i/b$k;->a(Ljava/lang/Throwable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
