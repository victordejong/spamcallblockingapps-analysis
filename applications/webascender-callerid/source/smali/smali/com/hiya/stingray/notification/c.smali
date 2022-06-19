.class public final synthetic Lcom/hiya/stingray/notification/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/notification/s;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/notification/s;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/notification/c;->f:Lcom/hiya/stingray/notification/s;

    iput-object p2, p0, Lcom/hiya/stingray/notification/c;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/hiya/stingray/notification/c;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/hiya/stingray/notification/c;->f:Lcom/hiya/stingray/notification/s;

    iget-object v1, p0, Lcom/hiya/stingray/notification/c;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/hiya/stingray/notification/c;->h:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hiya/stingray/notification/s;->e(Landroid/content/Context;Ljava/lang/String;Lretrofit2/Response;)V

    return-void
.end method
