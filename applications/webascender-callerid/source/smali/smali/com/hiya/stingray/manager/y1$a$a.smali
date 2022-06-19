.class final Lcom/hiya/stingray/manager/y1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/y1$a;->a(Li/c/b0/b/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/y1$a;

.field final synthetic b:Lcom/hiya/stingray/manager/a2;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/y1$a;Lcom/hiya/stingray/manager/a2;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/y1$a$a;->a:Lcom/hiya/stingray/manager/y1$a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/y1$a$a;->b:Lcom/hiya/stingray/manager/a2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/y1$a$a;->a:Lcom/hiya/stingray/manager/y1$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/y1$a;->a:Lcom/hiya/stingray/manager/y1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/y1;->a(Lcom/hiya/stingray/manager/y1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/y1$a$a;->b:Lcom/hiya/stingray/manager/a2;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
