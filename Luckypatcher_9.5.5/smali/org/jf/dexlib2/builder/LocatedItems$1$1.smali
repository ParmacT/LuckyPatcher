.class Lorg/jf/dexlib2/builder/LocatedItems$1$1;
.super Ljava/lang/Object;
.source "LocatedItems.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jf/dexlib2/builder/LocatedItems$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private currentItem:Lorg/jf/dexlib2/builder/ItemWithLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/jf/dexlib2/builder/LocatedItems$1;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/LocatedItems$1;Ljava/util/Iterator;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->this$1:Lorg/jf/dexlib2/builder/LocatedItems$1;

    iput-object p2, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->currentItem:Lorg/jf/dexlib2/builder/ItemWithLocation;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->next()Lorg/jf/dexlib2/builder/ItemWithLocation;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jf/dexlib2/builder/ItemWithLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/builder/ItemWithLocation;

    iput-object v0, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->currentItem:Lorg/jf/dexlib2/builder/ItemWithLocation;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->currentItem:Lorg/jf/dexlib2/builder/ItemWithLocation;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/builder/ItemWithLocation;->setLocation(Lorg/jf/dexlib2/builder/MethodLocation;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/LocatedItems$1$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
