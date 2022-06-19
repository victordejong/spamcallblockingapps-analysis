.class public final synthetic Lg/g/a/a/i/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lg/g/a/a/i/n/j$a;


# direct methods
.method public synthetic constructor <init>(Lg/g/a/a/i/n/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/n/c;->f:Lg/g/a/a/i/n/j$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/g/a/a/i/n/c;->f:Lg/g/a/a/i/n/j$a;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lg/g/a/a/i/n/j$a;->h(Ljava/lang/Throwable;)Li/c/b0/b/a0;

    move-result-object p1

    return-object p1
.end method
