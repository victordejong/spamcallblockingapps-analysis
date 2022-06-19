.class final Lio/realm/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lio/realm/RealmFieldType;

.field final b:Z


# direct methods
.method constructor <init>(Lio/realm/RealmFieldType;Lio/realm/RealmFieldType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/h0$b;->a:Lio/realm/RealmFieldType;

    .line 3
    iput-boolean p3, p0, Lio/realm/h0$b;->b:Z

    return-void
.end method
