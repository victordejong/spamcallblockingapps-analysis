.class final Lg/g/b/d/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/g/a;->b(Lg/g/b/d/e/a;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Li/c/b0/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/d/g/a;


# direct methods
.method constructor <init>(Lg/g/b/d/g/a;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/g/a$a;->f:Lg/g/b/d/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lg/g/b/d/g/a$a;->f:Lg/g/b/d/g/a;

    invoke-static {p1}, Lg/g/b/d/g/a;->a(Lg/g/b/d/g/a;)Lg/g/b/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/d/a;->a()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Li/c/b0/c/c;

    invoke-virtual {p0, p1}, Lg/g/b/d/g/a$a;->a(Li/c/b0/c/c;)V

    return-void
.end method
