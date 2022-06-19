.class public final Le/m/a/b/j/a0/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/b/j/a0/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Le/m/a/b/j/a0/a/f;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/b/j/a0/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/m/a/b/j/a0/a/b;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/m/a/b/j/a0/a/a$a;->a:Le/m/a/b/j/a0/a/f;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/m/a/b/j/a0/a/a$a;->b:Ljava/util/List;

    .line 4
    iput-object v0, p0, Le/m/a/b/j/a0/a/a$a;->c:Le/m/a/b/j/a0/a/b;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Le/m/a/b/j/a0/a/a$a;->d:Ljava/lang/String;

    return-void
.end method
