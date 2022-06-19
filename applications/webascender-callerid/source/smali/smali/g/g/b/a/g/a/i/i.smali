.class public final Lg/g/b/a/g/a/i/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/a/g/a/i/h;",
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


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/common/phone/java/PhoneNormalizer$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/a/g/a/i/i;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lg/g/b/a/g/a/i/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lcom/hiya/common/phone/java/PhoneNormalizer$c;",
            ">;)",
            "Lg/g/b/a/g/a/i/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/a/g/a/i/i;

    invoke-direct {v0, p0}, Lg/g/b/a/g/a/i/i;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/common/phone/java/PhoneNormalizer$c;)Lg/g/b/a/g/a/i/h;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/g/a/i/h;

    invoke-direct {v0, p0}, Lg/g/b/a/g/a/i/h;-><init>(Lcom/hiya/common/phone/java/PhoneNormalizer$c;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/a/g/a/i/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/g/a/i/i;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    invoke-static {v0}, Lg/g/b/a/g/a/i/i;->c(Lcom/hiya/common/phone/java/PhoneNormalizer$c;)Lg/g/b/a/g/a/i/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/g/a/i/i;->b()Lg/g/b/a/g/a/i/h;

    move-result-object v0

    return-object v0
.end method
