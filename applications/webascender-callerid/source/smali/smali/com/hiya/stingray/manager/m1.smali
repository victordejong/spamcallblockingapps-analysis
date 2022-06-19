.class public final Lcom/hiya/stingray/manager/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/stingray/manager/l1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/h/a;",
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
            "Lg/g/a/a/h/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/m1;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lcom/hiya/stingray/manager/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/a/a/h/a;",
            ">;)",
            "Lcom/hiya/stingray/manager/m1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/m1;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/m1;-><init>(Lj/a/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/manager/l1;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/l1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/m1;->a:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/h/a;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/l1;-><init>(Lg/g/a/a/h/a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/m1;->b()Lcom/hiya/stingray/manager/l1;

    move-result-object v0

    return-object v0
.end method
