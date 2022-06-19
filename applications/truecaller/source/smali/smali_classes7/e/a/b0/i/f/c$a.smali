.class public Le/a/b0/i/f/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/i/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b0/i/f/c$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/b0/i/f/c$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le/a/b0/i/f/c$a;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/b0/i/f/c$a;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Le/a/b0/i/f/c$a;->b:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Le/a/b0/i/f/c$a;->c:Z

    return-void
.end method
