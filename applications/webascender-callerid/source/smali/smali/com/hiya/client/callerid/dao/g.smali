.class public final Lcom/hiya/client/callerid/dao/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/common/phone/java/PhoneNormalizer$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "ImmutableSet.of()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
