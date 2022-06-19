.class public final Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;-><init>(Le/a/c/c0/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl$a;->a:Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl$a;->a:Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;

    .line 2
    iget-object v0, v0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->c:Le/a/c/c0/o;

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Le/a/c/c0/o;->Z(Z)V

    return-void
.end method
