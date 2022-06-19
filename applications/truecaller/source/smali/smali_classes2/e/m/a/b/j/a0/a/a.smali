.class public final Le/m/a/b/j/a0/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/b/j/a0/a/a$a;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Le/m/a/b/j/a0/a/f;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/b/j/a0/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/b/j/a0/a/b;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Le/m/a/b/j/a0/a/f;Ljava/util/List;Le/m/a/b/j/a0/a/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/b/j/a0/a/f;",
            "Ljava/util/List<",
            "Le/m/a/b/j/a0/a/d;",
            ">;",
            "Le/m/a/b/j/a0/a/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/a0/a/a;->a:Le/m/a/b/j/a0/a/f;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/a0/a/a;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/a0/a/a;->c:Le/m/a/b/j/a0/a/b;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/a0/a/a;->d:Ljava/lang/String;

    return-void
.end method
