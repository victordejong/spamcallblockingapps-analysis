.class public Lcom/truecaller/ui/TruecallerInit$a;
.super Le/a/b0/a/w/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/TruecallerInit;->Ta()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/TruecallerInit$a;->a:Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {p0}, Le/a/b0/a/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public No()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$a;->a:Lcom/truecaller/ui/TruecallerInit;

    iget-object v0, v0, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    check-cast v0, Le/a/a/r0/j;

    invoke-virtual {v0}, Le/a/a/r0/j;->VA()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/TruecallerInit$a;->a:Lcom/truecaller/ui/TruecallerInit;

    sget-object v1, Lcom/truecaller/calling/dialer/DialerMode;->STANDALONE:Lcom/truecaller/calling/dialer/DialerMode;

    .line 3
    sget v2, Lcom/truecaller/ui/TruecallerInit;->u1:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/truecaller/ui/TruecallerInit;->Wa(Lcom/truecaller/calling/dialer/DialerMode;Ljava/lang/String;Lcom/truecaller/callhistory/data/FilterType;)V

    return-void
.end method
