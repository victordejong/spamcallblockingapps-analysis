.class public final Le/a/c/f/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Le/a/c/f/k/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/k;

    .line 2
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_avatarTextRed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/insights/R$attr;->tcx_avatarBackgroundRed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Le/a/c/f/k/c;->a:Ls1/k;

    .line 5
    new-instance v0, Ls1/k;

    .line 6
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_avatarTextBlue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    sget v2, Lcom/truecaller/insights/R$attr;->tcx_avatarBackgroundBlue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Le/a/c/f/k/c;->b:Ls1/k;

    .line 9
    new-instance v0, Ls1/k;

    .line 10
    sget v1, Lcom/truecaller/insights/R$attr;->tcx_avatarTextGreen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    sget v2, Lcom/truecaller/insights/R$attr;->tcx_avatarBackgroundGreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Le/a/c/f/k/c;->c:Ls1/k;

    return-void
.end method
