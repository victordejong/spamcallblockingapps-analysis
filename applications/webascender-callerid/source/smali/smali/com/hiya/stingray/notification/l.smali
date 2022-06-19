.class public final synthetic Lcom/hiya/stingray/notification/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/notification/l;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/notification/l;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/notification/l;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/hiya/stingray/notification/l;->g:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lcom/hiya/stingray/notification/z;->f(Landroid/content/Context;Ljava/lang/String;Lretrofit2/Response;)V

    return-void
.end method
