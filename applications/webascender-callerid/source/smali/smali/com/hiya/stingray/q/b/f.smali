.class public final synthetic Lcom/hiya/stingray/q/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/n;


# instance fields
.field public final synthetic a:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/b/f;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/q/b/f;->a:Ljava/util/Set;

    check-cast p1, Lcom/hiya/stingray/q/c/e;

    invoke-static {v0, p1}, Lcom/hiya/stingray/q/b/u;->h(Ljava/util/Set;Lcom/hiya/stingray/q/c/e;)Z

    move-result p1

    return p1
.end method
