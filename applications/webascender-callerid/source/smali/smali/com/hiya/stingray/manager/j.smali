.class public final synthetic Lcom/hiya/stingray/manager/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/o1;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lg/g/b/c/f;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/o1;Ljava/lang/String;Lg/g/b/c/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/j;->f:Lcom/hiya/stingray/manager/o1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/j;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/stingray/manager/j;->h:Lg/g/b/c/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/manager/j;->f:Lcom/hiya/stingray/manager/o1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/j;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/manager/j;->h:Lg/g/b/c/f;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/o1;->b0(Ljava/lang/String;Lg/g/b/c/f;)V

    return-void
.end method
