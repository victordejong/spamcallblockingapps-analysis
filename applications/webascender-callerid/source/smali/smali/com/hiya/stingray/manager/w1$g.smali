.class final Lcom/hiya/stingray/manager/w1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/w1;->e(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/w1$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/w1$g;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/w1$g;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/w1$g;->f:Lcom/hiya/stingray/manager/w1$g;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/n1;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/b0;->isBlocked()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/n1;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/w1$g;->a(Lcom/hiya/stingray/manager/n1;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
