.class public final synthetic Lcom/hiya/stingray/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/util/z;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/util/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/util/e;->f:Lcom/hiya/stingray/util/z;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/util/e;->f:Lcom/hiya/stingray/util/z;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/z;->c(Ljava/lang/Throwable;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method
