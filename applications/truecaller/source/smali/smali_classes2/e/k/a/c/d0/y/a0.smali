.class public abstract Le/k/a/c/d0/y/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/y/a0$b;,
        Le/k/a/c/d0/y/a0$a;,
        Le/k/a/c/d0/y/a0$c;
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/d0/y/a0;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/y/a0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/a0;->a:Le/k/a/c/d0/y/a0;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/a0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation
.end method
