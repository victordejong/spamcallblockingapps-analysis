.class public Le/a/a/k/w$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/w$b$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/content/ContentValues;

.field public final d:Ljava/lang/String;

.field public final e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/k/w$b$a;Le/a/a/k/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p2, p1, Le/a/a/k/w$b$a;->a:I

    .line 3
    iput p2, p0, Le/a/a/k/w$b;->a:I

    .line 4
    iget-object p2, p1, Le/a/a/k/w$b$a;->b:Landroid/net/Uri;

    .line 5
    iput-object p2, p0, Le/a/a/k/w$b;->b:Landroid/net/Uri;

    .line 6
    iget-object p2, p1, Le/a/a/k/w$b$a;->c:Landroid/content/ContentValues;

    .line 7
    iput-object p2, p0, Le/a/a/k/w$b;->c:Landroid/content/ContentValues;

    .line 8
    iget-object p2, p1, Le/a/a/k/w$b$a;->d:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Le/a/a/k/w$b;->d:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Le/a/a/k/w$b$a;->e:[Ljava/lang/String;

    .line 11
    iput-object p1, p0, Le/a/a/k/w$b;->e:[Ljava/lang/String;

    return-void
.end method
