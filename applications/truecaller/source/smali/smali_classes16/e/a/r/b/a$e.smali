.class public final Le/a/r/b/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/b/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/b/a;


# direct methods
.method public constructor <init>(Le/a/r/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b/a$e;->a:Le/a/r/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/r/b/a$e;->a:Le/a/r/b/a;

    .line 2
    iget-object p1, p1, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 3
    check-cast p1, Le/a/r/b/n;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Le/a/r/b/n;->d:Z

    .line 5
    sget-object p2, Lcom/truecaller/wizard/adschoices/AdsChoice;->PERSONALIZED_ADS:Lcom/truecaller/wizard/adschoices/AdsChoice;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Le/a/r/b/n;->Oj(Lcom/truecaller/wizard/adschoices/AdsChoice;Z)V

    return-void
.end method
