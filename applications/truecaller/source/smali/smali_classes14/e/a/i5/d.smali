.class public abstract Le/a/i5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i5/d$c;,
        Le/a/i5/d$d;,
        Le/a/i5/d$a;,
        Le/a/i5/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i5/d;->a:Ljava/lang/String;

    iput p2, p0, Le/a/i5/d;->b:I

    iput p3, p0, Le/a/i5/d;->c:I

    iput p4, p0, Le/a/i5/d;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i5/d;->b:I

    return v0
.end method
