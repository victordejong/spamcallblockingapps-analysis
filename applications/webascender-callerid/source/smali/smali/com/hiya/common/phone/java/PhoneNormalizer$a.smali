.class final Lcom/hiya/common/phone/java/PhoneNormalizer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/common/phone/java/PhoneNormalizer$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/common/phone/java/PhoneNormalizer;->j(Lcom/hiya/common/phone/parser/PhoneParser;)Lcom/hiya/common/phone/java/PhoneNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer$a;->a:Lcom/google/common/collect/z;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer$a;->a:Lcom/google/common/collect/z;

    return-object v0
.end method
