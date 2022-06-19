.class public final synthetic Lcom/hiya/stingray/manager/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/x1;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/x1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/a0;->f:Lcom/hiya/stingray/manager/x1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/a0;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/manager/a0;->f:Lcom/hiya/stingray/manager/x1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/a0;->g:Ljava/lang/String;

    check-cast p1, Lf/h/k/c;

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/x1;->f(Ljava/lang/String;Lf/h/k/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
