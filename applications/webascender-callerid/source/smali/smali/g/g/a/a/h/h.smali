.class public final Lg/g/a/a/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/a/h/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/a/a/h/c;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/d/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/h/h;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lg/g/a/a/h/h;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lg/g/a/a/h/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/a/a/h/c;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/d/c;",
            ">;)",
            "Lg/g/a/a/h/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/a/h/h;

    invoke-direct {v0, p0, p1}, Lg/g/a/a/h/h;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/a/h/c;Lg/g/a/d/c;)Lg/g/a/a/h/g;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/h/g;

    invoke-direct {v0, p0, p1}, Lg/g/a/a/h/g;-><init>(Lg/g/a/a/h/c;Lg/g/a/d/c;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/a/a/h/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/h;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/h/c;

    iget-object v1, p0, Lg/g/a/a/h/h;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/d/c;

    invoke-static {v0, v1}, Lg/g/a/a/h/h;->c(Lg/g/a/a/h/c;Lg/g/a/d/c;)Lg/g/a/a/h/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/a/h/h;->b()Lg/g/a/a/h/g;

    move-result-object v0

    return-object v0
.end method
