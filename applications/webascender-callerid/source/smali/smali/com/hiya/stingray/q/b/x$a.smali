.class final Lcom/hiya/stingray/q/b/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/x;->a()Lcom/google/common/collect/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "TF;TT;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/q/b/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/x$a;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/x$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/x$a;->f:Lcom/hiya/stingray/q/b/x$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lg/g/c/a/a/a/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/c/a/a/a/c;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/x$a;->a(Ljava/lang/String;)Lg/g/c/a/a/a/c;

    move-result-object p1

    return-object p1
.end method
