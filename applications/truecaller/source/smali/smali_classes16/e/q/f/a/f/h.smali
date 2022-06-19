.class public Le/q/f/a/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Date;


# direct methods
.method public constructor <init>(Le/q/f/a/f/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Le/q/f/a/f/i;->a:Ljava/lang/String;

    iput-object v0, p0, Le/q/f/a/f/h;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Le/q/f/a/f/i;->b:Ljava/lang/String;

    iput-object v0, p0, Le/q/f/a/f/h;->b:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Le/q/f/a/f/i;->c:Ljava/util/Date;

    iput-object p1, p0, Le/q/f/a/f/h;->c:Ljava/util/Date;

    return-void
.end method
