.class public final Le/a/t/a/x/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/t/a/v/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;


# direct methods
.method public constructor <init>(Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/x/j;->b:Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/a/t/a/v/i;

    iget-object v1, p0, Le/a/t/a/x/j;->b:Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    invoke-direct {v0, v1}, Le/a/t/a/v/i;-><init>(Landroid/view/View;)V

    .line 2
    iget-object v1, p0, Le/a/t/a/x/j;->b:Lcom/truecaller/android/truemoji/search/HorizontalEmojiList;

    .line 3
    iput-object v1, v0, Le/a/t/a/v/i;->b:Le/a/t/a/o;

    return-object v0
.end method
