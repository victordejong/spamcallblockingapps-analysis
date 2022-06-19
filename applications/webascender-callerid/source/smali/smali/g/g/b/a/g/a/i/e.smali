.class public final Lg/g/b/a/g/a/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/a/g/a/i/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/common/phone/java/PhoneNormalizer$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
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
            "Lcom/hiya/common/phone/java/PhoneNormalizer$c;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/a/g/a/i/e;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lg/g/b/a/g/a/i/e;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;)Lg/g/b/a/g/a/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/common/phone/java/PhoneNormalizer$c;",
            ">;",
            "Lj/a/a<",
            "Lg/g/a/a/h/g;",
            ">;)",
            "Lg/g/b/a/g/a/i/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/a/g/a/i/e;

    invoke-direct {v0, p0, p1}, Lg/g/b/a/g/a/i/e;-><init>(Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/common/phone/java/PhoneNormalizer$c;Lg/g/a/a/h/g;)Lg/g/b/a/g/a/i/d;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/g/a/i/d;

    invoke-direct {v0, p0, p1}, Lg/g/b/a/g/a/i/d;-><init>(Lcom/hiya/common/phone/java/PhoneNormalizer$c;Lg/g/a/a/h/g;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/a/g/a/i/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/g/a/i/e;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    iget-object v1, p0, Lg/g/b/a/g/a/i/e;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/h/g;

    invoke-static {v0, v1}, Lg/g/b/a/g/a/i/e;->c(Lcom/hiya/common/phone/java/PhoneNormalizer$c;Lg/g/a/a/h/g;)Lg/g/b/a/g/a/i/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/g/a/i/e;->b()Lg/g/b/a/g/a/i/d;

    move-result-object v0

    return-object v0
.end method
