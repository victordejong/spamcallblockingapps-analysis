.class final Lcom/hiya/stingray/manager/y1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/y1;->b()Li/c/b0/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/y1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/y1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/y1$a;->a:Lcom/hiya/stingray/manager/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/m<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/a2;

    const-string v1, "asyncEmitter"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/hiya/stingray/manager/a2;-><init>(Landroid/os/Handler;Li/c/b0/b/m;)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/y1$a;->a:Lcom/hiya/stingray/manager/y1;

    invoke-static {v1}, Lcom/hiya/stingray/manager/y1;->a(Lcom/hiya/stingray/manager/y1;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5
    new-instance v1, Lcom/hiya/stingray/manager/y1$a$a;

    invoke-direct {v1, p0, v0}, Lcom/hiya/stingray/manager/y1$a$a;-><init>(Lcom/hiya/stingray/manager/y1$a;Lcom/hiya/stingray/manager/a2;)V

    invoke-interface {p1, v1}, Li/c/b0/b/m;->a(Li/c/b0/d/f;)V

    return-void
.end method
