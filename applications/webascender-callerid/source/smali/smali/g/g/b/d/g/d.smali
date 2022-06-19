.class public final Lg/g/b/d/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/d/g/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/b/d/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/d/d/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/g/d;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lg/g/b/d/g/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/b/d/d/a;",
            ">;)",
            "Lg/g/b/d/g/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/d/g/d;

    invoke-direct {v0, p0}, Lg/g/b/d/g/d;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/b/d/d/a;)Lg/g/b/d/g/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/d/g/c;

    invoke-direct {v0, p0}, Lg/g/b/d/g/c;-><init>(Lg/g/b/d/d/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/d/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/d;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/b/d/d/a;

    invoke-static {v0}, Lg/g/b/d/g/d;->c(Lg/g/b/d/d/a;)Lg/g/b/d/g/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/g/d;->b()Lg/g/b/d/g/c;

    move-result-object v0

    return-object v0
.end method
