.class public final synthetic Le/a/e/c2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/FeedbackItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/components/FeedbackItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/i;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/e/c2/i;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    .line 1
    sget v1, Lcom/truecaller/ui/components/FeedbackItemView;->m:I

    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView;->a()V

    return-void
.end method
