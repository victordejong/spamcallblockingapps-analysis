.class public Le/a/o5/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x0;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/w0;->a:Landroid/app/Activity;

    const-string p1, "n"

    .line 3
    invoke-virtual {p2, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/o5/w0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o5/w0;->a:Landroid/app/Activity;

    iget-object v1, p0, Le/a/o5/w0;->b:Ljava/lang/String;

    .line 2
    sget v2, Le/a/w4/s/b0;->g:I

    .line 3
    sget-object v2, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CGMT:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Le/a/w4/s/b0;->PA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V

    return-void
.end method
