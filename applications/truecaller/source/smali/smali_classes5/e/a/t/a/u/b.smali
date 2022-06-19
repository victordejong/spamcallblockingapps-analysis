.class public final Le/a/t/a/u/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/t/a/u/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Le/a/t/a/u/e;

    .line 1
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_people:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_people:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_nature:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_nature:I

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_food:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_food:I

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_activity:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_activity:I

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_travel:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_travel:I

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    aput-object v1, v0, v5

    .line 6
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_objects:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_objects:I

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 7
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_symbols:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_symbols:I

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 8
    new-instance v1, Le/a/t/a/u/e;

    sget v2, Lcom/truecaller/android/truemoji/R$drawable;->emoji_one_category_flags:I

    sget v3, Lcom/truecaller/android/truemoji/R$string;->emoji_category_flags:I

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/t/a/u/e;-><init>(II[Le/a/t/a/u/d;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/t/a/u/b;->a:Ljava/util/List;

    return-void
.end method
