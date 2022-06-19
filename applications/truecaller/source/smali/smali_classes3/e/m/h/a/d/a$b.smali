.class public final Le/m/h/a/d/a$b;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"

# interfaces
.implements Le/m/h/a/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;",
        "Le/m/h/a/d/a$a;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/m/h/a/d/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;Le/m/h/a/d/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p3, p0, Le/m/h/a/d/a$b;->a:Ljava/util/Set;

    .line 3
    iput-object p4, p0, Le/m/h/a/d/a$b;->b:Ljava/lang/Runnable;

    return-void
.end method
