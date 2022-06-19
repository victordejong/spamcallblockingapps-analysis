.class public abstract Le/m/a/b/j/c0/h/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/b/j/c0/h/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/b/j/c0/h/s$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/m/a/b/j/c0/h/s$a$a;
    .locals 3

    .line 1
    new-instance v0, Le/m/a/b/j/c0/h/q$b;

    invoke-direct {v0}, Le/m/a/b/j/c0/h/q$b;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "Null flags"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object v1, v0, Le/m/a/b/j/c0/h/q$b;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Le/m/a/b/j/c0/h/s$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()J
.end method
