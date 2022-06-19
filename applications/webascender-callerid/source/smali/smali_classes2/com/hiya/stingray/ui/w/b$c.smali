.class public final Lcom/hiya/stingray/ui/w/b$c;
.super Lcom/squareup/picasso/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/b;->t(Lcom/hiya/stingray/t/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/w/b;

.field final synthetic b:Lcom/hiya/stingray/t/n0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/b;Lcom/hiya/stingray/t/n0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/n0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/b$c;->a:Lcom/hiya/stingray/ui/w/b;

    iput-object p2, p0, Lcom/hiya/stingray/ui/w/b$c;->b:Lcom/hiya/stingray/t/n0;

    invoke-direct {p0}, Lcom/squareup/picasso/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/b$c;->a:Lcom/hiya/stingray/ui/w/b;

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/b$c;->b:Lcom/hiya/stingray/t/n0;

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/w/b;->p(Lcom/hiya/stingray/ui/w/b;Lcom/hiya/stingray/t/n0;)V

    return-void
.end method
